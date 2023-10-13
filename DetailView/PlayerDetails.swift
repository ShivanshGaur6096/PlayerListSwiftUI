//
//  PlayerDetails.swift
//  TableViewApp
//
//  Created by Shivansh Gaur on 08/08/22.
//

import SwiftUI

struct PlayerDetails: View {

    let player: Player

    var body: some View {
        VStack {
            // Adding Banner View
            Image(player.team.imageName).resizable().aspectRatio(contentMode: .fit)

            // Adding Player Profile Pic
            Image(player.imageName)
                .clipShape(Circle())
                .background(Circle().foregroundColor(player.team.color))
                .overlay(Circle().stroke(Color.white, lineWidth: 5))
                .offset(x: 0, y: -90) // Move View up
                .padding(.bottom, -90) // Move padding of View

            // Adding Name
            Text(player.name)
                .font(.system(size: 40))
                .fontWeight(.heavy)
                .foregroundColor(.black)

            // Creating Reusable View
            QuestionText(statName: "Age", statValue: String(player.age))
            QuestionText(statName: "Height", statValue: player.height)
            QuestionText(statName: "Weight", statValue: "\(player.weight)lbs")

            // To creates an adjustable empty spacer (row or column)
            Spacer()
        }.edgesIgnoringSafeArea(.top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerDetails(player: players[0])
    }
}
