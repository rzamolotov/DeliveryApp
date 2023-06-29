//
//  DeliveryAppApp.swift
//  DeliveryApp
//
//  Created by Роман Замолотов on 29.06.2023.
//

import SwiftUI

@main
struct DeliveryAppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Network())
                .environmentObject(Shop())
        }
    }
}
