//
//  PlayerList.swift
//  TableViewApp
//
//  Created by Shivansh Gaur on 09/08/22.
//

import SwiftUI

struct PlayerList: View {
    var body: some View {
        NavigationView {
            List(players) {
                currentPlayer in
                NavigationLink(destination: PlayerDetails(player: currentPlayer)) { // Navigate to Player Details Page
                    PlayersRow(playerDatails: currentPlayer).frame(height: 60)
                }
            }.navigationTitle(navTitle)
        }
    }
}

struct PlayerList_Previews: PreviewProvider {
    static var previews: some View {
        PlayerList()
    }
}
