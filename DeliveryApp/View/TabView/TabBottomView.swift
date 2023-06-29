//
//  TabBottomView.swift
//  DeliveryApp
//
//  Created by Роман Замолотов on 29.06.2023.
//

import SwiftUI

struct TabBottomView: View {
    
    let tabbarItems: [TabItemData]
    @Binding var selectedIndex: Int
    
    var body: some View {
        
        ZStack {
            Rectangle()
                .foregroundColor(.white)
                .frame(width: screen.width, height: screen.height / 11)
                .shadow(radius: 5, x: 0, y: 4)
            Rectangle()
                .foregroundColor(.white)
                .frame(width: screen.width, height: screen.height / 10)
                .offset(y: 50)

            HStack {
                Spacer()
                ForEach(tabbarItems.indices, id: \.self) { index in
                    let item = tabbarItems[index]
                    Button {
                        self.selectedIndex = index
                    } label: {
                        let isSelected = selectedIndex == index
                        TabItemView(data: item, isSelected: isSelected)
                            .foregroundColor(Color.gray)
                            .opacity(0.8)
                    }
                    Spacer()
                }
            }
        }
    }
}

struct TabBottomView_Preview: PreviewProvider {
    
    static var tabItemsData = [
        TabItemData(image: "house", selectedImage: "house.fill", title: "Все платья", isCart: false),
        TabItemData(image: "heart", selectedImage: "heart.fill", title: "Избранное", isCart: false),
        TabItemData(image: "cart", selectedImage: "cart.fill", title: "Корзина", isCart: true)
    ]
    static var previews: some View {
        TabBottomView(tabbarItems: tabItemsData, selectedIndex: .constant(2))
    }
}
