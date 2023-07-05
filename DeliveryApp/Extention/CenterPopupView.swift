//
//  CenterPopupView.swift
//  DeliveryApp
//
//  Created by Роман Замолотов on 05.07.2023.
//

import SwiftUI

struct CenterPopupView<Content: View>: View {

    let content: Content

    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Spacer()
                content
                    .padding(.bottom, geometry.safeAreaInsets.bottom)
                    .background(Color.white)
                    .cornerRadius(radius: 16, corners: [.topLeft, .topRight])
            }
            .edgesIgnoringSafeArea(.all)
        }
        .animation(.easeOut)
        .transition(.move(edge: .bottom))
    }
}
