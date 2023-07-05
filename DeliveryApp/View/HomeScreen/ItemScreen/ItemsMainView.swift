//
//  ItemsMainView.swift
//  DeliveryApp
//
//  Created by Роман Замолотов on 05.07.2023.
//

import SwiftUI

struct ItemsMainView: View {
    var products: [Dishes]
    @State private var selectedProduct: Dishes?
    @State private var selectedCategory: CategoryItems?
    @State private var presentAlert = false
    @EnvironmentObject var networkVM: Network
    
    @State var selectedTeg: CustomSegmentedPicker.ProductPicker
      
    var filteredProducts: [Dishes] {
        let result = products.filter { $0.tegs.contains(selectedTeg.title) }
        return result
    }
    
    var selectedtitleCategory: CategoryItems? {
        guard let category = networkVM.dataCategory.first else {
            return nil
        }
        return networkVM.dataCategory.filter { $0.name == category.name }.first
    }
    
    
    var body: some View {
        VStack {
            HeaderDescriprionView(selectedCategory: selectedtitleCategory ?? CategoryItems(id: 1, name: "", image_url: ""))
                .onTapGesture {
                    selectedCategory = selectedtitleCategory
                }

            CustomSegmentedPicker(category: networkVM.dataDishes, selectedTeg: $selectedTeg)
            ScrollView {
                LazyVGrid(columns: gridLayout) {
                    ForEach(filteredProducts, id: \.id) { product in
                        ItemPreview(selectedProduct: $selectedProduct, product: product)
                    }
                }
                
                .animation(.none)
            }
        }
        .popup(isPresented: Binding<Bool>(
            get: { selectedProduct != nil },
            set: { isPresented in
                if !isPresented {
                    selectedProduct = nil
                }
            }
        )) {
            if let selectedProduct = selectedProduct {
                ItemView(product: selectedProduct, selectedProduct: $selectedProduct, presentAlert: $presentAlert)
            }
        }
        .padding([.leading, .trailing])
        .navigationBarBackButtonHidden(true)
    }
}

struct ItemsMainView_Previews: PreviewProvider {
    static var previews: some View {
        ItemsMainView(products: [productExample], selectedTeg: .allMenu)
            .environmentObject(Network())
    }
}
