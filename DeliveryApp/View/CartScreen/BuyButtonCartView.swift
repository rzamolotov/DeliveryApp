//
//  BuyButtonCartView.swift
//  DeliveryApp
//
//  Created by Роман Замолотов on 29.06.2023.
//

import SwiftUI

struct BuyButtonCartView: View {
    
    @EnvironmentObject var shop: Shop
    @State private var counter: Int = 1
    
    var body: some View {
        Button {
            print("\(shop.products.count)")
            print("checkout")
        } label: {
            ZStack {
                Rectangle()
                    .frame(width: screen.width / 1.1, height: screen.height / 12)
                    .cornerRadius(10)
                HStack {
                    Text("Оплатить")
                        .font(.title2)
                        .foregroundColor(.white)
                }
            }
        }
    }
}


struct BuyButtonCartView_Previews: PreviewProvider {
    static var previews: some View {
        BuyButtonCartView()
            .environmentObject(Shop())
    }
}
