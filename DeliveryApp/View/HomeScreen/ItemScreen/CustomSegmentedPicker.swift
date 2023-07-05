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

    @State private var selectedProduct: ProductPicker.title
    
    var filteredProducts: [Dishes] {
        let result = category.filter { $0.tegs.contains(selectedProduct.title) }
        return result
    }
    
    var body: some View {
        ScrollView(.horizontal) {
            HStack(spacing: 0) {
                ForEach(ProductPicker.allCases) { category in
                    ZStack {
                        Rectangle()
                            .cornerRadius(10)
                            .frame(width: screen.width / 3)
                            .padding(2)
                            .opacity(selectedProduct == category ? 1 : 0.1)
                            .foregroundColor(selectedProduct == category ? .blue : .gray)
                            .onTapGesture {
                                withAnimation(.interactiveSpring(response: 0.2,
                                                                 dampingFraction: 2,
                                                                 blendDuration: 0.5)) {
                                    selectedProduct = category
                                }
                            }
                    }
                    .overlay(
                        Text(category.title)
                            .fontWeight(selectedProduct == category ? .bold : .regular)
                            .foregroundColor(selectedProduct == category ? .white: .black)
                    )
                }
            }
        }
        .frame(height: screen.height / 20)
        .cornerRadius(10)
    }
}

struct CustomSegmentedPicker_Previews: PreviewProvider {
    static var previews: some View {
        CustomSegmentedPicker()
    }
}
