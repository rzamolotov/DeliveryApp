//
//  ItemsMainView.swift
//  DeliveryApp
//
//  Created by Роман Замолотов on 05.07.2023.
//

import SwiftUI

struct ItemsMainView: View {
    var products: [Dishes]
    @State private var selectedProduct: Dishes?
    @State private var presentAlert = false
    
    var body: some View {
        VStack {
            ScrollView {
                LazyVGrid(columns: gridLayout) {
                    ForEach(products) { product in
                        ItemPreview(selectedProduct: $selectedProduct, product: product)
                    }
                }
            }
        }
        .popup(isPresented: Binding<Bool>(
            get: { selectedProduct != nil },
            set: { isPresented in
                if !isPresented {
                    selectedProduct = nil
                }
            }
        )) {
            if let selectedProduct = selectedProduct {
                ItemView(product: selectedProduct, selectedProduct: $selectedProduct, presentAlert: $presentAlert)
            }
        }
    }
}


struct ItemsMainView_Previews: PreviewProvider {
    static var previews: some View {
        ItemsMainView(products: [productExample])
    }
}
