//
//  HistoryListView.swift
//  HuliPizza
//
//  Created by Steven Lipton on 9/16/19.
//  Copyright © 2019 Steven Lipton. All rights reserved.
//

import SwiftUI

struct HistoryListView: View {
  @Binding var selectedImageID: Int
  var historyModel: HistoryModel
  var body: some View {
    NavigationView {
      List(historyModel.historyItems) { item in
        NavigationLink(destination: ItemDetailView(historyItem: item, imageID: self.$selectedImageID)) {
          HistoryRowView(historyItem: item)
        }
      }.navigationBarTitle("Pizza History")
    }
  }
}

struct HistoryListView_Previews: PreviewProvider {
  static var previews: some View {
    HistoryListView(selectedImageID: .constant(0),
                    historyModel: HistoryModel())
  }
}
