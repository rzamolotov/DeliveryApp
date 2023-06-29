//
//  Item+HeaderView.swift
//  DeliveryApp
//
//  Created by Роман Замолотов on 29.06.2023.
//

import SwiftUI

struct Item_HeaderView: View {
    
    @EnvironmentObject var networkVM: Network
    @State private var selectedCategory: CategoryItems? // Добавляем состояние для выбранной категории

    var body: some View {
        VStack{
            HeaderDescriprionView(category: selectedCategory != nil ? [selectedCategory!] : []) // Передаем выбранную категорию
            ItemRow(products: networkVM.dataDishes) // Передаем выбранную категорию
        }
        .navigationBarBackButtonHidden(true)
    }
}




struct Item_HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        Item_HeaderView()
            .environmentObject(Network())
    }
}
