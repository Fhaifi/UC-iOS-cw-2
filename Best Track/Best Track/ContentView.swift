//
//  ContentView.swift
//  Best Track
//
//  Created by Alya Alhaifi on 07/09/2022.
//

import SwiftUI

struct ContentView: View {
    @State var name = "?"
    var body: some View {
        VStack {
            Text("ما هو المسار المفضل لديك")
            Image(name)
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .padding()
            
            Text("IOS")
                .onTapGesture{
                    name = "IOS"
                }
            Text("Gamedev")
                .onTapGesture{
                    name = "Gamedev"
                }
            Text("Web")
                .onTapGesture{
                    name = "WEB"
                }
            Text("Android")
                .onTapGesture{
                    name = "andriod"
                }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
