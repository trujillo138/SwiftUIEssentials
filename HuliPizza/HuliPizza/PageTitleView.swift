//
//  PageTitleView.swift
//  HuliPizza
//
//  Created by Trujillo, Tomas on 2020-01-21.
//  Copyright © 2020 Trujillo, Tomas. All rights reserved.
//

import SwiftUI

struct PageTitleView: View {
    let title: String
    var isDisplayingOrders: Bool? = nil
    var body: some View {
        HStack {
            Spacer()
            Text(title)
            .font(.largeTitle)
            .fontWeight(.heavy)
                .padding(.trailing)
        }.overlay(
            Image(systemName: isDisplayingOrders ?? false ? "chevron.up.square" : "chevron.down.square")
                .font(.title)
                .foregroundColor(isDisplayingOrders != nil ? Color("G1") : .clear)
                .padding(),
            alignment: .leading
        )
        .background(Color("G4"))
        .foregroundColor(Color("G1"))
    }
}

struct PageTitleView_Previews: PreviewProvider {
    static var previews: some View {
        PageTitleView(title: "Some title")
    }
}
