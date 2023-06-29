//
//  PersonalDataView.swift
//  DeliveryApp
//
//  Created by Роман Замолотов on 29.06.2023.
//

import SwiftUI

struct PersonalDataView: View {
    var body: some View {
        VStack {
            Image(systemName: "person")
                .foregroundColor(.blue)
                .font(.largeTitle)
            Text("Ваши персональные данные")
                .foregroundColor(.gray)
                .font(.title3)
        }
        .opacity(0.8)
        
        
    }
}

struct PersonalDataView_Previews: PreviewProvider {
    static var previews: some View {
        PersonalDataView()
    }
}
