//
//  ContentView.swift
//  MyFirstApp
//
//  Created by Diogenes Ricardo Freitas de Oliveira on 16/08/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 20) {
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
                
            ScrollView{
                HStack{
                    ForEach(0..<5) { item in
                            ZStack{
                                Rectangle()
                                    .opacity(0.01)
                                    .frame(height: 200)
                                    
                                VStack{
                                    Image("xburguer")
                                        .resizable()
                                        .frame(height: 50)
                                    Text("X Code \(item)")
                                    Button("COMPRAR") {
                                        
                                    }
                                }
                            }
                            .background(.white)
                            .clipShape(RoundedCorners(corners: [.bottomLeft, .topRight], radius: 30))
                    }
                }
                .padding()
            }
        }
        .frame(
            minWidth: 0,
            maxWidth: .infinity,
            minHeight: 0,
            maxHeight: .infinity
            )
        .background(.yellow)
    }
}

struct RoundedCorners: Shape {
    var corners: UIRectCorner
    var radius: CGFloat
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(
            roundedRect: rect,
            byRoundingCorners: corners,
            cornerRadii: CGSize(width: radius, height: radius)
        )
        return Path(path.cgPath)
    }
}

#Preview {
    ContentView()
}
