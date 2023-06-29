//
//  CartRowView.swift
//  DeliveryApp
//
//  Created by Роман Замолотов on 29.06.2023.
//

import SwiftUI

struct CartRowView: View {
    @EnvironmentObject var shop: Shop
    @EnvironmentObject var networkVM: Network
    var products: [Dishes]
    var body: some View {
        
            ForEach(products) { product in
                CartItemView(product: product)
            }
        
    }
    
}

struct CartRowView_Previews: PreviewProvider {
    static var previews: some View {
        CartRowView(products: [productExample])
            .environmentObject(Shop())
            .environmentObject(Network())
    }
}
