//
//  Shop.swift
//  DeliveryApp
//
//  Created by Роман Замолотов on 29.06.2023.
//

import Foundation

class Shop: ObservableObject {
    
    @Published var products: [Dishes] = []
    @Published var total: Int = 0
    
    func addToCart(product: Dishes) {
        products.append(product)
        total += product.price
    }
    
    func removeFromCart(product: Dishes) {
        products = products.filter { $0.id != product.id }
        total -= product.price
    }
}
