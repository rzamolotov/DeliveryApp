//
//  Products.swift
//  DeliveryApp
//
//  Created by Роман Замолотов on 29.06.2023.
//

import Foundation

struct Products: Codable {
    let dishes: [Dishes]
}

struct Dishes: Identifiable, Codable, Equatable {
    let id: Int
    let name: String
    let price: Int
    let weight: Int
    let description: String
    let image_url: String
    let tegs: [String]
    
    enum CodingKeys: CodingKey {
        case id, name, price, weight, description, image_url, tegs
    }
}
