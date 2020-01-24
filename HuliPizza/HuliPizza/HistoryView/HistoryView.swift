//
//  HistoryView.swift
//  HuliPizza
//
//  Created by Steven Lipton on 9/16/19.
//  Copyright © 2019 Steven Lipton. All rights reserved.
//

import SwiftUI

struct HistoryView: View {
  @State private var selectedImageID: Int = 0
  var historyModel: HistoryModel
  var body: some View {
    VStack {
      ContentHeaderView()
      PageTitleView(title:"Pizza History")
      SelectedImageView(image: "\(selectedImageID)_250w")
        .padding(5)
      HistoryListView(selectedImageID: $selectedImageID, historyModel: historyModel)
    }
  }
}

struct HistoryView_Previews: PreviewProvider {
  static var previews: some View {
    Group {
      HistoryView(historyModel: HistoryModel())
      HistoryView(historyModel: HistoryModel())
        .colorScheme(.dark)
        .background(Color.black)
    }
  }
}
