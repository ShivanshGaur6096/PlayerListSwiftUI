//
//  QuestionText.swift
//  TableViewApp
//
//  Created by Shivansh Gaur on 09/08/22.
//

import SwiftUI

struct QuestionText: View {

    var statName: String
    var statValue: String

    var body: some View {
        HStack{
            Text(statName + ":")
                .font(.system(size: 40)).fontWeight(.bold)
                .padding(.leading, 30)
            Text(statValue)
                .font(.system(size: 40)).fontWeight(.light)
                .foregroundColor(.red)
                .padding(.trailing, 30)
            Spacer()
        }

    }
}

struct QuestionText_Previews: PreviewProvider {
    static var previews: some View {
        QuestionText(statName: "Age", statValue: "30")
    }
}
