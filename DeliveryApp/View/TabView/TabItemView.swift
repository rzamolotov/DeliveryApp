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

    
    var body: some View {
        VStack {
            ZStack{
                Image(systemName: isSelected ? data.selectedImage : data.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .animation(.default, value: 1)
                    .foregroundColor(isSelected ? .blue : .gray)
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
