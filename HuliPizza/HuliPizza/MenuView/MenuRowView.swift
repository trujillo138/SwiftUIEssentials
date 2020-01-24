//
//  MenuRowView.swift
//  HuliPizza
//
//  Created by Trujillo, Tomas on 2020-01-21.
//  Copyright © 2020 Trujillo, Tomas. All rights reserved.
//

import SwiftUI

struct MenuRowView: View {
    let menuItem: MenuItem
    var body: some View {
        VStack {
            HStack(alignment: .top, spacing: 15) {
                Image("\(menuItem.id)_100w")
                    //                .cornerRadius(10.0)
                    //                .border(Color("G4"), width: 2)
                    .clipShape(Capsule())
                    .shadow(color: Color.black.opacity(0.5), radius: 5, x: 5, y: 5)
                VStack(alignment: .leading) {
                    Text(menuItem.name)
                        .font(.title)
                        .fontWeight(.light)
                    RatingsView(count: menuItem.rating)
                }
                Spacer()
            }
            Text(menuItem.description)
        }
    }
}

struct MenuRowView_Previews: PreviewProvider {
    static var previews: some View {
        MenuRowView(menuItem: testMenuItem)
    }
}
