//
//  OrderListView.swift
//  HuliPizza
//
//  Created by Trujillo, Tomas on 2020-01-20.
//  Copyright © 2020 Trujillo, Tomas. All rights reserved.
//

import SwiftUI

struct OrderListView: View {
    @ObservedObject var orderModel: OrderModel
    var body: some View {
        VStack {
            ListHeaderView(orderModel: orderModel, name: "You Order")
            List(orderModel.orders) { item in
                OrderRowView(orderItem: item)
            }
        }
    }
}

struct OrderListView_Previews: PreviewProvider {
    static var previews: some View {
        OrderListView(orderModel: OrderModel())
    }
}
