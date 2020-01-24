//
//  ListHeaderView.swift
//  HuliPizza
//
//  Created by Trujillo, Tomas on 2020-01-21.
//  Copyright © 2020 Trujillo, Tomas. All rights reserved.
//

import SwiftUI

struct ListHeaderView: View {
    let name: String
    var body: some View {
        HStack {
            Text(name)
                .padding(.leading, 5)
                .foregroundColor(Color("G2"))
            Spacer()
        }.background(Color("G4"))
    }
}

struct ListHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ListHeaderView(name: "Some name")
    }
}
