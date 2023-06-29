//
//  ItemPreview.swift
//  DeliveryApp
//
//  Created by Роман Замолотов on 29.06.2023.
//

import SwiftUI

struct ItemPreview: View {
    
    var product: Dishes
    
    var body: some View {
        VStack(alignment: .leading) {
            AsyncImage(
                url: URL(string: product.image_url)!,
                placeholder:{ ProgressView()},
                image:  { Image(uiImage: $0) .resizable() } )
            .scaledToFit()
            
            Text(product.name)
                .font(.caption)
                .fontWeight(.bold)
                .foregroundColor(.black)
                .opacity(0.6)
        }
        .frame(width: screen.width / 3.5, height: screen.height / 5)
    }
}

struct ItemPreview_Previews: PreviewProvider {
    static var previews: some View {
        ItemPreview(product: productExample)
    }
}
