//
//  Favorites.swift
//  MyFirstApp
//
//  Created by Diogenes Ricardo Freitas de Oliveira on 28/08/25.
//

import SwiftUI

struct Favorites: View {
    var body: some View {
        HStack {
            Text("OS QUERIDINHOS")
                .padding(.trailing, 16)
                .padding(.leading, 32)
                .frame(width: .infinity, height: 50)
                .foregroundColor(.orange)
                .fontWeight(.bold)
                .background(.black)
            Spacer()
        }
        
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 15) {
                ForEach(0..<5) { item in
                    ZStack{
                        Rectangle()
                            .opacity(0.01)
                            .frame(width: 150, height: 200)
                        VStack{
                            Image("xburguer")
                                .resizable()
                                .frame(width: 100, height: 80)
                            
                            Text("X Code \(item)")
                                .padding(.horizontal, 16)
                                .padding(.vertical, 8)
                                .foregroundColor(.red)
                                .fontWeight(.bold)
                            Button("COMPRAR")
                            {
                                
                            }
                            .frame(width: 130,height: 40)
                            .background(.red)
                            .foregroundColor(.white)
                            .cornerRadius(8)
                            
                        }
                        
                    }
                    .background()
                    .clipShape(RoundedCorners(corners: [.bottomLeft, .topRight], radius: 30))
                    
                }
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    Favorites()
}
