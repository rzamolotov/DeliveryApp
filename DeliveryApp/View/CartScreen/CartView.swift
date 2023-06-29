//
//  CartView.swift
//  DeliveryApp
//
//  Created by Роман Замолотов on 29.06.2023.
//

import SwiftUI

struct CartView: View {
        @EnvironmentObject var shop: Shop
    
    var body: some View {
        VStack {
            HeaderViewMainPageView()
                Spacer()
            if shop.products.count > 0 {
                VStack {
                    ScrollView {
                        CartRowView(products: shop.products)
                    }
                    Spacer()
                    BuyButtonCartView()
                        .padding(.bottom, 50)
                }
            } else {
                Image(systemName: "cart")
                    .foregroundColor(.blue)
                    .font(.largeTitle)
                Text("Ваша корзина пуста")
                    .foregroundColor(.gray)
                    .font(.title3)
                Spacer()
            }
        }
    }
}


struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
            .environmentObject(Shop())
    }
}
