//
//  CartRowView.swift
//  DeliveryApp
//
//  Created by Роман Замолотов on 29.06.2023.
//

import SwiftUI

struct CartItemView: View {
    
    @EnvironmentObject var shop: Shop
    var product: Dishes
    @State private var counter: Int = 1
    
    var body: some View {
        VStack{
            HStack {
                ZStack {
                    Rectangle()
                        .foregroundColor(.gray)
                        .opacity(0.1)
                        .frame(width: screen.width / 4.5, height: screen.width / 4.5)
                        .cornerRadius(10)
                    AsyncImage(
                        url: URL(string: product.image_url)!,
                        placeholder:{ ProgressView()},
                        image:  { Image(uiImage: $0) .resizable() } )
                    .scaledToFit()
                    .frame(width: screen.width / 5, height: screen.width / 5)
                }
                
                
                VStack(alignment: .leading, spacing: 10, content: {
                    Text(product.name)
                        .foregroundColor(.black)
                    HStack(spacing: 2) {
                        HStack {
                            Text ("\(product.price * counter)")
                            Image(systemName: "rublesign")
                                .font(.body)
                        }
                        .foregroundColor(.black)
                        .opacity(0.8)
                        
                        HStack {
                            Image(systemName: "circle.fill")
                                .font(.custom("", size: 5))
                            Text (" \(product.weight * counter)г")
                        }
                        .foregroundColor(.gray)
                        .opacity(0.7)
                    }
                })
                
                Spacer()
                
                ZStack {
                    Rectangle()
                        .cornerRadius(10)
                        .foregroundColor(.gray)
                        .opacity(0.4)
                        .frame(width: screen.width / 4, height: screen.height / 25)
                    HStack{
                        Button(action: {
                            if counter > 0 {
                                counter -= 1
                                if counter == 0 {
                                    shop.removeFromCart(product: product)
                                }
                            }
                        }, label: {
                            Image(systemName: "minus")
                                .foregroundColor(.black)
                            
                        })
                        .foregroundColor(.white)
                        
                        Text("\(counter)")
                            .foregroundColor(.black)
                        
                            .foregroundColor(.white)
                        Button(action: {
                            if counter < 50 {
                                counter += 1
                            }
                        }, label: {
                            Image(systemName: "plus")
                                .foregroundColor(.black)
                        })
                        
                    }
                }
            }
            .padding([.leading, .trailing])
            
        }
    }
}

struct CartItemView_Previews: PreviewProvider {
    static var previews: some View {
        CartItemView(product: productExample)
    }
}
