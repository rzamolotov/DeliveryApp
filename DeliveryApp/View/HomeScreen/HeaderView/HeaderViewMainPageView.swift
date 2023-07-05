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
    @StateObject private var locationManagerDelegate = LocationManagerDelegate()

    var body: some View {
        HStack {
            Image(systemName: "location.circle")
                .font(.largeTitle)
            VStack(alignment: .leading) {
                Text(locationManagerDelegate.currentLocation)
                Text(getCurrentDate())
            }
            Spacer()
            Image(systemName: "person.circle")
                .font(.largeTitle)
        }
        .padding()
        .onAppear {
            locationManagerDelegate.requestLocation()
        }
    }
}

