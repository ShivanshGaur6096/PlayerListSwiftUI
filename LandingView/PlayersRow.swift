//
//  PlayersRow.swift
//  TableViewApp
//
//  Created by Shivansh Gaur on 09/08/22.
//

import SwiftUI

struct PlayersRow: View {

    var playerDatails: Player

    var body: some View {
        HStack{
            Image(playerDatails.imageName)
                .resizable().aspectRatio(contentMode: .fit)
                .clipShape(Circle())
                .background(Circle().foregroundColor(playerDatails.team.color))

            Text(playerDatails.name).font(.title)
            Spacer()
        }
    }
}

struct PlayersRow_Previews: PreviewProvider {
    static var previews: some View {
        PlayersRow(playerDatails: players[0])
            .previewLayout(.fixed(width: 500, height: 100))
    }
}
