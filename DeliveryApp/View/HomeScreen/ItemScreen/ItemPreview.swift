//
//  ItemPreview.swift
//  DeliveryApp
//
//  Created by Роман Замолотов on 29.06.2023.
//

import SwiftUI

struct ItemPreview: View {
    @Binding var selectedProduct: Dishes?
    var product: Dishes
    
    var body: some View {
        Button {
            selectedProduct = product
        } label: {
            VStack(alignment: .leading) {
                ZStack {
                    Rectangle()
                        .foregroundColor(.gray)
                        .opacity(0.1)
                        .cornerRadius(10)
                    
                    AsyncImage(
                        url: URL(string: product.image_url)!,
                        placeholder: { ProgressView() },
                        image:  { Image(uiImage: $0).resizable() }
                    )
                    .scaledToFit()
                    .frame(width: screen.width / 4, height: screen.width / 4)
                }
                .frame(width: screen.width / 3.5, height: screen.width / 3.5)
                
                Text(product.name)
                    .font(.caption)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .opacity(0.6)
            }
            .frame(width: screen.width / 3.5, height: screen.height / 6)
        }
    }
}
