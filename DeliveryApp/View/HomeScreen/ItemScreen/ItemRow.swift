//
//  ItemRow.swift
//  DeliveryApp
//
//  Created by Роман Замолотов on 29.06.2023.
//

import SwiftUI

struct ItemRow: View {
    
    @State private var isPopupVisible = false
    var product: Dishes
    
    var body: some View {
        ZStack {
            Button {
                isPopupVisible = true
            } label: {
                ItemPreview(product: product)
            }
            if isPopupVisible {
                Color.black.opacity(0.2)
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
            
            
        }
    }
}

struct ItemRow_Previews: PreviewProvider {
    static var previews: some View {
        ItemRow(product: productExample)
    }
}
