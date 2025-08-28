//
//  Header.swift
//  MyFirstApp
//
//  Created by Diogenes Ricardo Freitas de Oliveira on 28/08/25.
//

import SwiftUI

struct Header: View {
    var body: some View {
        HStack() {
            Spacer()
            ZStack(alignment: .bottomTrailing) {
                Image("xburguer")
                    .resizable()
                    .frame(width: 250, height: 250)
                        ZStack(){
                            Circle()
                                .fill(.red)
                                .frame(width: 100, alignment: .center)
                            VStack {
                                Text("R$ 19,90")
                                    .foregroundColor(.white)
                                    .fontWeight(.bold)
                                Text("H  O  J  E")
                                    .foregroundColor(.white)
                                    .fontWeight(.bold)
                            }
                            Circle()
                                .stroke(
                                    Color.white,
                                    style: StrokeStyle(
                                        lineWidth: 2,
                                        dash: [5, 3]
                                    )
                                )
                                .frame(width: 90, height: 100)
                        }
                        .padding(5)
            }
        }
        .frame(maxWidth: .infinity)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    Header()
}
