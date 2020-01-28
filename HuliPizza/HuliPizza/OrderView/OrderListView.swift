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
            List {
                Section(
                    header: ListHeaderView(orderModel: self.orderModel, name: "You Order")
                ) {
                    ForEach(orderModel.orders) { item in
                        OrderRowView(orderItem: item)
                    }
                .onDelete(perform: delete)
                }
            }
        }
    }
    
    func delete(at offsets: IndexSet) {
        orderModel.orders.remove(atOffsets: offsets)
    }
}

struct OrderListView_Previews: PreviewProvider {
    static var previews: some View {
        OrderListView(orderModel: OrderModel())
    }
}
