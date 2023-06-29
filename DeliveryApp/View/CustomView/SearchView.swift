//
//  SearchView.swift
//  DeliveryApp
//
//  Created by Роман Замолотов on 29.06.2023.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        VStack {
            Image(systemName: "magnifyingglass")
                .foregroundColor(.blue)
                .font(.largeTitle)
            Text("Найдите то что ищите")
                .foregroundColor(.gray)
                .font(.title3)
                
        }
        .opacity(0.8)
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
