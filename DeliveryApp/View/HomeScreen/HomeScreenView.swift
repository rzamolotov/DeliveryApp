//
//  HomeScreenView.swift
//  DeliveryApp
//
//  Created by Роман Замолотов on 29.06.2023.
//

import SwiftUI

struct HomeScreenView: View {
    @EnvironmentObject var networkVM: Network
    
    var body: some View {
        NavigationView {
            
            VStack{
                HeaderViewMainPageView()
                CategoryRow(categories: networkVM.dataCategory, products: networkVM.dataDishes)
            }
        }
    }
}

struct HomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView()
            .environmentObject(Network())
    }
}
