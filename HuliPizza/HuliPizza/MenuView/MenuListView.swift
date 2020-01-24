//
//  MenuListView.swift
//  HuliPizza
//
//  Created by Trujillo, Tomas on 2020-01-20.
//  Copyright © 2020 Trujillo, Tomas. All rights reserved.
//

import SwiftUI

struct MenuListView: View {
    @ObservedObject var orderModel: OrderModel
    var menuList = MenuModel().menu
    var body: some View {
        VStack {
            ListHeaderView(orderModel: orderModel, name: "Menu")
            NavigationView {
                List(menuList) { item in
                    NavigationLink(destination: MenuDetailView(orderModel: self.orderModel, menuItem: item)) {
                        MenuRowView(menuItem: item)
                            .listRowInsets(EdgeInsets())
                    }
                }
            .navigationBarTitle("Pizza Order")
            }
        }
    }
}

struct MenuListView_Previews: PreviewProvider {
    static var previews: some View {
        MenuListView(orderModel: OrderModel())
    }
}
