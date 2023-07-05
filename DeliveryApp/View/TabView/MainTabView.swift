//
//  MainTabView.swift
//  DeliveryApp
//
//  Created by Роман Замолотов on 29.06.2023.
//

import SwiftUI

struct MainTabView: View {
    @State var selectedIndex: Int = 0


    enum TabType: Int, CaseIterable {
        case home = 0
        case cart
        case search
        case peron
        
        var tabItem: TabItemData {
            switch self {
            case .home:
                return TabItemData(image: "house", selectedImage: "house.fill", title: "Главная", isCart: false)
            case .cart:
                return TabItemData(image: "cart", selectedImage: "cart.fill", title: "Корзина", isCart: true)
            case .search:
                return TabItemData(image: "magnifyingglass.circle", selectedImage: "magnifyingglass.circle.fill", title: "Поиск", isCart: false)
            case .peron:
                return TabItemData(image: "person", selectedImage: "person.fill", title: "Аккаунт", isCart: false)
            }
        }
    }
    
    var body: some View {
        CustomTabView(tabs: TabType.allCases.map({ $0.tabItem }), selectedIndex: $selectedIndex) { index in
            let type = TabType(rawValue: index) ?? .home
            getTabView(type: type)
        }
    }
    
    @ViewBuilder
    func getTabView(type: TabType) -> some View {
        switch type {
        case .home:
            HomeScreenView()
        case .search:
            SearchView()
        case .cart:
            CartView()
        case .peron:
           PersonalDataView()
        }
    }
    
    
    struct MainTabView_Previews: PreviewProvider {
        static var previews: some View {
            MainTabView()
        
        }
    }
}
