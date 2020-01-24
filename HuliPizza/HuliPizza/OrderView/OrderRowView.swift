//
//  OrderRowView.swift
//  HuliPizza
//
//  Created by Trujillo, Tomas on 2020-01-21.
//  Copyright © 2020 Trujillo, Tomas. All rights reserved.
//

import SwiftUI

struct OrderRowView: View {
    var orderItem: OrderItem
    var body: some View {
        HStack(alignment: .firstTextBaseline) {
            Text(orderItem.description)
                .font(.headline)
            Spacer()
            Text(orderItem.formattedExtendedPrice)
                .bold()
        }
    }
}

struct OrderRowView_Previews: PreviewProvider {
    static var previews: some View {
        OrderRowView(orderItem: testOrderItem)
            .environment(\.sizeCategory, .accessibilityExtraExtraLarge)
    }
}
