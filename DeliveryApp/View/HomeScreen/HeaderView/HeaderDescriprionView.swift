//
//  HeaderDescriprionView.swift
//  DeliveryApp
//
//  Created by Роман Замолотов on 29.06.2023.
//

import SwiftUI

struct HeaderDescriprionView: View {
    
    
    var selectedCategory: CategoryItems?
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        HStack {
            Button {
                self.presentationMode.wrappedValue.dismiss()
            } label: {
                Image(systemName: "chevron.left")
                    .font(.largeTitle)
                    .foregroundColor(.black)
            }

            Text(selectedCategory?.name ?? "")
                .font(.title3)

            Spacer()
            Image(systemName: "person.circle")
                .font(.largeTitle)
        }
        .padding([.leading, .trailing])
    }
}

//struct HeaderDescriprionView_Previews: PreviewProvider {
//    static var previews: some View {
//        HeaderDescriprionView(category: [categoryExample]) // Передаем выбранную категорию
//    }
//}
