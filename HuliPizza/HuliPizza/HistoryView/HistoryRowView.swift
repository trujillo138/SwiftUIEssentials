//
//  PizzaHistoryRowView.swift
//  HuliPizza
//
//  Created by Trujillo, Tomas on 2020-01-21.
//  Copyright © 2020 Trujillo, Tomas. All rights reserved.
//

import SwiftUI

struct HistoryRowView: View {
    var body: some View {
        HStack(alignment: .top, spacing: 15) {
            Image("1_100w")
                .clipShape(Circle())
                .shadow(color: Color.black.opacity(0.5), radius: 5, x: 10, y: 10)
            Text("Huli Chicken")
                .font(.title)
            Spacer()
        }.overlay(
            Image(systemName: "chevron.right.square")
                .foregroundColor(Color("G3"))
                .font(.title),
            alignment: .trailing
        )
    }
}

struct HistoryRowView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryRowView()
    }
}
