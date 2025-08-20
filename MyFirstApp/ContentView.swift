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
                ZStack(alignment: .top) {
                    Image("xburguer")
                        .resizable()
                        .frame(width: 350, height: 300)
                    VStack {
                        Spacer()
                        HStack {
                            Spacer()
                            ZStack(){
                                Circle()
                                    .fill(.red)
                                    .frame(width: 150, alignment: .center)
                                VStack {
                                    Text("R$ 19,90")
                                        .font(.title)
                                    Text("HOJE")
                                        .font(.title)
                                }
                                //Circulo com borda tracejada sem preenchimento
                            }
                            .padding(5)
                        }
                    }
                    
                }
//                .padding()
                .frame(width: 350)

                
            }
            .frame(maxWidth: .infinity)
            
            HStack{
                Spacer()
                Text("NOSSOS DESTAQUES")
                    .padding(.trailing, 32)
                    .padding(.leading, 16)
                    .frame(width: .infinity, height: 50)
                    .background(.white)
            }
            .frame(width: .infinity)

            
            HStack {
                Image("xburguer")
                    .resizable()
                    .frame(height: 200)
                VStack {
                    Image("xburguer")
                        .resizable()
                        .frame(height: 100)
                    Image("xburguer")
                        .resizable()
                        .frame(height: 100)
                }
            }
            .frame(maxWidth: .infinity)
            .padding(.horizontal)
            
            
            HStack {
                Text("OS QUERIDINHOS")
                    .padding(.trailing, 16)
                    .padding(.leading, 32)
                    .frame(width: .infinity, height: 50)
                    .background(.white)
                Spacer()
            }
            
            ScrollView {
                HStack{
                    ForEach(0..<10) { item in
                        VStack{
                            Image("xburguer")
                                .resizable()
                                .frame(height: 50)
                            Text("X Code \(item)")
                            Button("COMPRAR") {
                                
                            }
                        }
                    }
                }
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

#Preview {
    ContentView()
}
