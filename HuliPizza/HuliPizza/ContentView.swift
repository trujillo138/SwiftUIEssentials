//
//  ContentView.swift
//  HuliPizza
//
//  Created by Trujillo, Tomas on 2020-01-20.
//  Copyright © 2020 Trujillo, Tomas. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var isMenuDisplayed: Bool = true
    @ObservedObject var orderModel: OrderModel
    var body: some View {
        VStack {
//            ContentHeaderView()
//                .layoutPriority(2)
            Button(action: { self.isMenuDisplayed.toggle() }) {
                PageTitleView(title: "Order Pizza", isDisplayingOrders: isMenuDisplayed)
            }
            MenuListView(orderModel: orderModel)
                .layoutPriority(isMenuDisplayed ? 1.0 : 0.5)
            OrderListView(orderModel: orderModel)
                .layoutPriority(isMenuDisplayed ? 0.5 : 1.0)
        }
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView(orderModel: OrderModel())
            ContentView(orderModel: OrderModel())
                .colorScheme(.dark)
                .previewDevice("iPad Pro (9.7-inch)")
        }
    }
}
