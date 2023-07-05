//
//  CategoryRow.swift
//  DeliveryApp
//
//  Created by Роман Замолотов on 29.06.2023.
//

import SwiftUI

struct CategoryRow: View {
    
    var categories: [CategoryItems] 
    var products: [Dishes]
    
    var body: some View {
        ScrollView {
            ForEach(categories) { category in
                NavigationLink {
                    ItemsMainView(products: products, selectedTeg: .allMenu)
                } label: {
                    CategoryItemView(categoryItem: category)
                }
            }
            .padding(.bottom, 30)
        }
        
    }
}

struct CategoryRow_Previews: PreviewProvider {
    static var previews: some View {
        CategoryRow(categories: [categoryExample], products: [productExample])
    }
}
