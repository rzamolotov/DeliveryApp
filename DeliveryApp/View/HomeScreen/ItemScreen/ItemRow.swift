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
        ForEach(products) { product in
            ZStack {
                Button {
                    isPopupVisible = true
                } label: {
                    ItemPreview(product: product)
                }
                if isPopupVisible {
                    ZStack {
                        Color.gray.opacity(0.2)
                            .edgesIgnoringSafeArea(.all)
                            .onTapGesture {
                                isPopupVisible = false
                            }
                        VStack{
                            Spacer()
                            ItemView(product: product)
                            
                            Spacer()
                        }
                    }
                    .animation(.easeInOut(duration: 1.0))
                }
            }
        }
    }
}

struct ItemRow_Previews: PreviewProvider {
    static var previews: some View {
        ItemRow(products:  [productExample])
    }
}
