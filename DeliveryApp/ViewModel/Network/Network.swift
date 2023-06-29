//
//  Network.swift
//  DeliveryApp
//
//  Created by Роман Замолотов on 29.06.2023.
//

import Foundation
import SwiftUI
import Combine

class Network: ObservableObject {
    
    @Published var dataCategory = [CategoryItems]()
    @Published var dataDishes = [Dishes]()
    @Published var isLoading = true
    @Published var searchQuery = ""
    
    init() {
        self.fetchCategory()
    }
    
    func fetchCategory(){
        guard let url = URL(string: "https://run.mocky.io/v3/058729bd-1402-4578-88de-265481fd7d54") else {
            fatalError("INVALID URL")
        }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data, error == nil else {
                return
            }
            
            let result = try? JSONDecoder().decode(Category.self, from: data)
            
            if let result = result {
                DispatchQueue.main.async {
                    self.isLoading = false
                    self.dataCategory = result.сategories
                    self.fetchDishes()
                    print(result)
                    
                }
            }
        }.resume()
    }
    func fetchDishes(){
        guard let url = URL(string: "https://run.mocky.io/v3/aba7ecaa-0a70-453b-b62d-0e326c859b3b") else {
            fatalError("INVALID URL")
        }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data, error == nil else {
                return
            }
            
            let result = try? JSONDecoder().decode(Products.self, from: data)
            
            if let result = result {
                DispatchQueue.main.async {
                    self.isLoading = false
                    self.dataDishes = result.dishes
                    print(result)
                }
            }
        }.resume()
    }
    
//    func filterLatest() -> [Latest] {
//        guard !searchQuery.isEmpty else {
//            return dataLatest
//        }
//
//        let filteredData = dataLatest.filter { item in
//            return item.name.lowercased().contains(searchQuery.lowercased())
//        }
//        print(filteredData)
//        return filteredData
//    }
}
