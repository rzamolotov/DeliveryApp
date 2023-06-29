//
//  ItemRow.swift
//  DeliveryApp
//
//  Created by Роман Замолотов on 29.06.2023.
//

import SwiftUI

struct ItemRow: View {
    @State private var isPopupVisible = false
    var products: [Dishes]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: gridLayout, spacing: columnSpacing) {
                ForEach(products) { product in
                    PopupItemView(product: product)
                }
            }
            .padding([.leading, .trailing])
        }
    }
}
struct ItemRow_Previews: PreviewProvider {
    static var previews: some View {
        ItemRow(products:  [productExample])
    }
}
