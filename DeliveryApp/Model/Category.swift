//
//  Category.swift
//  DeliveryApp
//
//  Created by Роман Замолотов on 29.06.2023.
//

import Foundation

struct Category: Codable {
    let сategories: [CategoryItems]
}

struct CategoryItems: Identifiable, Codable {
    let id: Int
    let name: String
    let image_url: String
    
    enum CodingKeys: CodingKey {
        case id, name, image_url
    }
}
