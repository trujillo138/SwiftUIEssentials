//
//  PizzaHistory.swift
//  HuliPizza
//
//  Created by Trujillo, Tomas on 2020-01-21.
//  Copyright © 2020 Trujillo, Tomas. All rights reserved.
//

import SwiftUI

struct HistoryView: View {
    var body: some View {
        VStack {
            ContentHeaderView()
            PageTitleView(title: "Pizza History")
            SelectedImageView(image: "1_250w")
                .padding(5)
            HistoryListView()
            Spacer()
        }
    }
}

struct PizzaHistory_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView()
    }
}
