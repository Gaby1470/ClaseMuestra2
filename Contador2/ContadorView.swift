//
//  ContentView.swift
//  Contador2
//
//  Created by Gabriela Sanchez on 22/01/25.
//

import SwiftUI

struct ContadorView: View {
    @State private var count: Int = 0
    
    var body: some View {
        VStack {
            Text("Primera clase app clase 1")
                .font(.largeTitle)
                .foregroundColor(.green)
                .padding()
            
            Text("Cantidad \(count)")
                .font(.title)
                .padding()
            
            HStack{
                Button(action: {
                    count -= 1}) {
                        Text("-")
                            .font(.largeTitle)
                            .frame(width: 50, height: 50)
                            .background(Color.red)
                            .foregroundColor(.white)
                            .clipShape(Circle())
                        
                    }
                
                ZStack {
                    Circle()
                        .foregroundColor(.blue)
                        .frame(width: 50, height: 50)
                    Button(action: {
                        count += 1}) {
                            Text("+")
                                .font(.largeTitle)
                                .frame(width: 50, height: 50)
                                .foregroundColor(.white)
                            
                        }
                }
            }
            Button(action: {
                count = 0
            }){
                Text("Reiniciar")
                    .font(.title)
                    .padding()
                    .background(Color.black)
                    .foregroundColor(.white)
                    .cornerRadius(10)


            }
        }
        .padding()
    }
}

#Preview {
    ContadorView()
}
