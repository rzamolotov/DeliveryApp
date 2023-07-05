//
//  CustomSegmentedPicker.swift
//  DeliveryApp
//
//  Created by Роман Замолотов on 05.07.2023.
//

import SwiftUI

struct CustomSegmentedPicker: View {
    
    enum ProductPicker: String, CaseIterable, Identifiable {
        
        case allMenu, rice, salad, fish
        
        var id: Self {
            self
        }
        var title: String {
            switch self {
            case .allMenu:
                return "Все меню"
            case .rice:
                return "С рисом"
            case .salad:
                return "Салаты"
            case .fish:
                return "С рыбой"
            }
        }
    }
    
    var category: [Dishes]

    @Binding var selectedTeg: ProductPicker
    
    var filteredProducts: [Dishes] {
        let result = category.filter { $0.tegs.contains(selectedTeg.title) }
        return result
    }
    
    var body: some View {
        ScrollView(.horizontal) {
            HStack(spacing: 0) {
                ForEach(ProductPicker.allCases) { category in
                    ZStack {
                        Rectangle()
                            .cornerRadius(10)
                            .frame(width: screen.width / 4)
                            .padding(6)
                            .opacity(selectedTeg == category ? 1 : 0.1)
                            .foregroundColor(selectedTeg == category ? .blue : .gray)
                            .onTapGesture {
                                withAnimation() {
                                    selectedTeg = category
                                }
                            }
                    }
                    .overlay(
                        Text(category.title)
                            .fontWeight(selectedTeg == category ? .bold : .regular)
                            .foregroundColor(selectedTeg == category ? .white: .black)
                    )
                }
            }
        }
        .frame(height: screen.height / 20)
        .cornerRadius(10)
    }
}

//struct CustomSegmentedPicker_Previews: PreviewProvider {
//    static var previews: some View {
//        CustomSegmentedPicker(category: [productExample], selectedCategory: .constant(.allMenu))
//    }
//}
