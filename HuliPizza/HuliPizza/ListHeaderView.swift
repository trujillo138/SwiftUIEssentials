//
//  ListHeaderView.swift
//  HuliPizza
//
//  Created by Trujillo, Tomas on 2020-01-21.
//  Copyright © 2020 Trujillo, Tomas. All rights reserved.
//

import SwiftUI

struct ListHeaderView: View {
    @ObservedObject var orderModel: OrderModel
    let name: String
    var body: some View {
        HStack {
            Text(name)
                .padding(.leading, 5)
                .foregroundColor(Color("G2"))
            Spacer()
            Text(orderModel.formattedTotal)
                .fontWeight(.heavy)
                .padding(.trailing)
                
            }.foregroundColor(Color("G1"))
        .background(Color("G4"))
        
    }
}

struct ListHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ListHeaderView(orderModel: OrderModel(), name: "Some name")
    }
}
