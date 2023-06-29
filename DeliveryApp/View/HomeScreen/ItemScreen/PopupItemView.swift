//
//  PopupItemView.swift
//  DeliveryApp
//
//  Created by Роман Замолотов on 29.06.2023.
//

import SwiftUI

struct PopupItemView: View {
    
    @State private var isPopupVisible = false
    var product: Dishes
    
    var body: some View {
        if isPopupVisible {
            ItemView(product: product, presentAlert: $isPopupVisible)
                .onTapGesture {
                    isPopupVisible = false
                }
        } else {
            ItemPreview(product: product)
                .onTapGesture {
                    isPopupVisible = true
                }
        }
    }
}

struct PopupItemView_Previews: PreviewProvider {
    static var previews: some View {
        PopupItemView(product: productExample)
    }
}
