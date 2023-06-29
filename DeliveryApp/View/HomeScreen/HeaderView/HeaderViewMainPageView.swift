//
//  HeaderViewMainPageView.swift
//  DeliveryApp
//
//  Created by Роман Замолотов on 29.06.2023.
//

import SwiftUI
import CoreLocation
import Combine


struct HeaderViewMainPageView: View {
    
    var body: some View {
        HStack {
            Image(systemName: "location.circle")
                .font(.largeTitle)
            VStack {
                Text("Севастополь")
                Text(getCurrentDate())
            }
            Spacer()
            Image(systemName: "person.circle")
                .font(.largeTitle)
        }
        .padding()
    }
  
}

struct HeaderViewMainPageView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderViewMainPageView()
    }
}
