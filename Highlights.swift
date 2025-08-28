//
//  Highlights.swift
//  MyFirstApp
//
//  Created by Diogenes Ricardo Freitas de Oliveira on 28/08/25.
//

import SwiftUI

struct Highlights: View {
    var body: some View {
        
        HeadHighlight()
        
        HStack {
            Image("xburguer")
                .resizable()
                .frame(height: 100)
            VStack {
                Image("xburguer")
                    .resizable()
                    .frame(height: 50)
                Image("xburguer")
                    .resizable()
                    .frame(height: 50)
            }
        }
        .frame(maxWidth: .infinity)
        .padding(.horizontal)
    }
}

func HeadHighlight() -> some View {
    HStack{
        Spacer()
        Text("NOSSOS DESTAQUES")
            .padding(.trailing, 32)
            .padding(.leading, 16)
            .frame(width: .infinity, height: 50)
            .foregroundColor(.orange)
            .fontWeight(.bold)
            .background(.white)
    }
    .frame(width: .infinity)
}

#Preview(traits: .sizeThatFitsLayout) {
    Highlights()
}
