//
//  MenuListView.swift
//  HuliPizza
//
//  Created by Steven Lipton on 9/16/19.
//  Copyright © 2019 Steven Lipton. All rights reserved.
//

import SwiftUI

struct MenuListView: View {
    var body: some View {
        VStack {
            Text("Menu")
            List(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                HStack(alignment: .top , spacing:15){
                    Image("1_100w")
                    VStack {
                        Text("Huli Chicken Pizza")
                        HStack {
                            ForEach(0..<4){item in
                                Image("Pizza Slice")
                            }
                        }
                    }
                    Spacer()
                }
            }
        }
    }
}

struct MenuListView_Previews: PreviewProvider {
    static var previews: some View {
        MenuListView()
    }
}
