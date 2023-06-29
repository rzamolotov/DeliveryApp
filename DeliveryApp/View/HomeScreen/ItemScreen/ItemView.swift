//
//  ItemView.swift
//  DeliveryApp
//
//  Created by Роман Замолотов on 29.06.2023.
//

import SwiftUI

struct ItemView: View {
    
    var product: Dishes
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.white)
                .cornerRadius(20)
                .frame(width: screen.width / 1.1, height: screen.height / 1.5)
            
            VStack{
          
                ZStack {
                    Rectangle()
                        .foregroundColor(.gray)
                        .opacity(0.1)
                        .cornerRadius(20)
                    AsyncImage(
                        url: URL(string: product.image_url)!,
                        placeholder:{ ProgressView()},
                        image:  { Image(uiImage: $0) .resizable() } )
                    .scaledToFit()
                        
                    VStack(alignment: .trailing) {
                        HStack {
                            Spacer()
                            
                            Button {
                                //TODO: - ADD ACTION
                            } label: {
                                ZStack {
                                    Rectangle()
                                        .foregroundColor(.white)
                                        .opacity(0.8)
                                        .frame(width: screen.width / 10, height: screen.width / 10)
                                        .cornerRadius(10)
                                    Image(systemName: "heart")
                                }
                            }
                            
                            
                            
                            Button {
                                //TODO: - ADD ACTION
                            } label: {
                                ZStack {
                                    Rectangle()
                                        .foregroundColor(.white)
                                        .opacity(0.8)
                                        .frame(width: screen.width / 10, height: screen.width / 10)
                                        .cornerRadius(10)
                                    Image(systemName: "xmark")
                                }
                            }
                        }
                        .foregroundColor(.black)
                        .font(.callout)
                        
                        Spacer()
                    }
                    .padding([.trailing, .top])
                   
                    
                    
                }
                .frame(width: screen.width / 1.2, height: screen.height / 3.5)
                VStack(alignment: .leading) {
                    Text(product.name)
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .opacity(0.8)
                    HStack{
                        HStack {
                            Text ("\(product.price)")
                            Image(systemName: "rublesign")
                        }
                        .foregroundColor(.black)
                        .opacity(0.8)
                        
                        HStack {
                            Image(systemName: "circle.fill")
                                .font(.custom("", size: 5))
                            Text (" \(product.weight) г")
                        }
                        .foregroundColor(.gray)
                        .opacity(0.7)
                    }
                    ScrollView{
                        Text(product.description)
                            .font(.body)
                            .foregroundColor(.black)
                            .opacity(0.8)
                    }
                }
                .frame(width: screen.width / 1.2, height: screen.height / 5)
                Button {
                    
                } label: {
                    ZStack {
                        Rectangle()
                            .frame(width: screen.width / 1.2, height: screen.height / 14)
                            .cornerRadius(20)
                        Text("Добавить в корзину")
                            .foregroundColor(.white)
                            .font(.title3)
                            .fontWeight(.bold)
                    }
                }
            }
        }
    }
}

struct ItemView_Previews: PreviewProvider {
    static var previews: some View {
        ItemView(product: productExample)
    }
}
