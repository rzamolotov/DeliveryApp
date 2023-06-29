//
//  Category.swift
//  DeliveryApp
//
//  Created by Роман Замолотов on 29.06.2023.
//

import Foundation

struct Category {
    let categories: [CategoryItems]
}

struct CategoryItems: Identifiable {
    let id: Int
    let name: String
    let image_url: String
}
