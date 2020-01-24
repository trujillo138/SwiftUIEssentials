//
//  RootTabView.swift
//  HuliPizza
//
//  Created by Trujillo, Tomas on 2020-01-24.
//  Copyright © 2020 Trujillo, Tomas. All rights reserved.
//

import SwiftUI

struct RootTabView: View {
    var body: some View {
        TabView {
            ContentView(orderModel: OrderModel())
                .tabItem {
                    Image(systemName: "cart")
                    Text("Order")
            }
            HistoryView(historyModel: HistoryModel())
                .tabItem {
                    Image(systemName: "book")
                    Text("History")
            }
        }
    .accentColor(Color("B1"))
    }
}

struct RootTabView_Previews: PreviewProvider {
    static var previews: some View {
        RootTabView()
    }
}
