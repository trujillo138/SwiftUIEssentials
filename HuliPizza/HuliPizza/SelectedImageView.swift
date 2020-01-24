//
//  SelectedImageView.swift
//  HuliPizza
//
//  Created by Trujillo, Tomas on 2020-01-22.
//  Copyright © 2020 Trujillo, Tomas. All rights reserved.
//

import SwiftUI

struct SelectedImageView: View {
    let image: String
    var body: some View {
        Image(image)
            .resizable()
            .scaledToFit()
            .cornerRadius(30)
            .shadow(color: Color.black, radius: 10, x: 5, y: 5)
    }
}

struct SelectedImageView_Previews: PreviewProvider {
    static var previews: some View {
        SelectedImageView(image: "1_250w")
    }
}
