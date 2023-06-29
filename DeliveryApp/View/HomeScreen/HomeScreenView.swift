//
//  HomeScreenView.swift
//  DeliveryApp
//
//  Created by Роман Замолотов on 29.06.2023.
//

import SwiftUI

struct HomeScreenView: View {
    var categories: [CategoryItems] = []
    var products: [Dishes] = []
    var body: some View {
        CategoryRow(categories: categories, products: products)
    }
}

struct HomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView()
    }
}
