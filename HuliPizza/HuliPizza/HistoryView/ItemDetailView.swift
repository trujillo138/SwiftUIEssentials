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
    var body: some View {
      imageID = historyItem.id
      return VStack {
        PageTitleView(title: historyItem.name)
        Text(historyItem.history)
          .padding(.top)
      }
    }
}

struct ItemDetailView_Previews: PreviewProvider {
    static var previews: some View {
      ItemDetailView(historyItem: HistoryModel().historyItems[0], imageID: .constant(0))
    }
}
