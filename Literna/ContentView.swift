//
//  ContentView.swift
//  Literna
//
//  Created by Wendy on 02/08/23.
//

import SwiftUI

struct ContentView: View {
    @State var lamp = false
    @State var face = false
    
    var body: some View {
//        Text("HI")
        VStack {
            ZStack {
                Color(lamp ? .black : .white)
                Button(action: {
                    lamp.toggle()
                }){
                    Text(lamp ? "Encender" : "Apagar")
                }
            }
            
            ZStack {
                Button(action: {
                    face.toggle()
                }){
                    Text(face ? "🐻‍❄️" : "🐻").font(.system(size: 100))
                }
            }
            
        }.edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
