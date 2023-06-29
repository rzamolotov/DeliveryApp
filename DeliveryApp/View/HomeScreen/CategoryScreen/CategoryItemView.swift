//
//  CategoryItemView.swift
//  DeliveryApp
//
//  Created by Роман Замолотов on 29.06.2023.
//

import SwiftUI

struct CategoryItemView: View {
    
    var categoryItem: CategoryItems
    
    var body: some View {
        ZStack {
            AsyncImage(
                url: URL(string: categoryItem.image_url)!,
                placeholder:{ ProgressView()},
                image:  { Image(uiImage: $0) .resizable() } )
            .scaledToFit()
            VStack {
                HStack {
                    Text(categoryItem.name)
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(.black)
                        .opacity(0.9)
                        .padding([.leading, .top])
                        .padding(.trailing, screen.width / 3)
                    Spacer()
                }
                Spacer()
            }
            
        }
        .frame(width: screen.width, height: screen.height / 5)
    }
}

struct CategoryItemView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItemView(categoryItem: categoryExample)
    }
}
