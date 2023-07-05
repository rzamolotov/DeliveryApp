//
//  TabItemView.swift
//  DeliveryApp
//
//  Created by Роман Замолотов on 29.06.2023.
//

import SwiftUI

struct TabItemView: View {
    let data: TabItemData
    var isSelected: Bool
    @EnvironmentObject var shop: Shop

    
    var body: some View {
        VStack {
            ZStack{
                Image(systemName: isSelected ? data.selectedImage : data.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .animation(.default, value: 1)
                    .foregroundColor(isSelected ? .blue : .gray)
                if data.isCart == true && shop.products.count > 0 {
                    Text("\(shop.products.count)")
                        .font(.custom(boldFont, size: fontSizeVerySmall))
                        .foregroundColor(.white)
                        .frame(width: 15, height: 15)
                        .background(Color.red)
                        .opacity(2)
                        .cornerRadius(60)
                        .offset(x: 13, y: -12)
                }
            }
            
            Spacer().frame(height: 4)
            
            Text(data.title)
                .foregroundColor(isSelected ? .blue : .gray)
                .font(.custom(mediumFont, size: fontSizeVerySmall / 1.5))
         
        }
        .frame(width: screen.width / 7, height: screen.width / 9)
    }
}

struct TabItemView_Previews: PreviewProvider {
    static var data = TabItemData(image: "house", selectedImage: "house.fill", title: "все платья", isCart: false)
    static var previews: some View {
        TabItemView(data: data, isSelected: true)
    }
}
