//
//  Products.swift
//  DeliveryApp
//
//  Created by Роман Замолотов on 29.06.2023.
//

import Foundation

struct Products {
    let dishes: [Dishes]
}

struct Dishes {
    let id: Int
    let name: String
    let price: Int
    let weight: Int
    let description: Int
    let image_url: Int
    let tegs: [String]
}
