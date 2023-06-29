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
        NavigationView {
            ScrollView {
                ForEach(categories) { category in
                    NavigationLink {
                        ItemRow(products: products)
                    } label: {
                        CategoryItemView(categoryItem: category)
                    }

                    
                }
            }
        }
    }
}

struct CategoryRow_Previews: PreviewProvider {
    static var previews: some View {
        CategoryRow(categories: [categoryExample], products: [productExample])
    }
}
