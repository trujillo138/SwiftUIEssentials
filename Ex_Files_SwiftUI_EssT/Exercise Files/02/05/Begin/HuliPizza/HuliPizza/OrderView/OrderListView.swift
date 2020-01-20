//
//  OrderListView.swift
//  HuliPizza
//
//  Created by Steven Lipton on 9/16/19.
//  Copyright © 2019 Steven Lipton. All rights reserved.
//

import SwiftUI

struct OrderListView: View {
    var body: some View {
        VStack {
            Text("Your Order")
            List(0..<5){item in
                HStack(alignment:.firstTextBaseline){
                    Text("Your order item here")
                    Spacer()
                    Text("$0.00")
                }
            }
        }
    }
}

struct OrderListView_Previews: PreviewProvider {
    static var previews: some View {
        OrderListView()
    }
}

