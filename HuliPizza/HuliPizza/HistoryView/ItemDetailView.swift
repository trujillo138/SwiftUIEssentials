//
//  ItemDetailView.swift
//  HuliPizza
//
//  Created by Tomas Trujillo on 2020-01-24.
//  Copyright © 2020 Steven Lipton. All rights reserved.
//

import SwiftUI

struct ItemDetailView: View {
    var historyItem: HistoryItem
    @Binding var imageID: Int
    @State var isPresented: Bool = false
    var body: some View {
        imageID = historyItem.id
        return VStack {
            PageTitleView(title: historyItem.name)
            MapView(latitude: historyItem.latitude, longitude: historyItem.longitude, regionRadius: 1000000)
                .frame(height: 100)
            PresentMapButton(isPresented: $isPresented, historyItem: historyItem)
            Text(historyItem.history)
                .frame(height: 300)
            Spacer()
        }
    }
}

struct ItemDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ItemDetailView(historyItem: HistoryModel().historyItems[0], imageID: .constant(0))
    }
}
