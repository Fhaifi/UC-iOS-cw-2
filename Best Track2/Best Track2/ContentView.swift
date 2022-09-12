//
//  ContentView.swift
//  Best Track2
//
//  Created by Alya Alhaifi on 08/09/2022.
//

import SwiftUI
struct ContentView: View {
    @State var amount = ""
    var body: some View {
        
        VStack {
            Text(" محول العملات العجيب !")
                .font(.largeTitle)
            TextField("العمله بالدينار ", text: $amount)
                .font(.largeTitle)
                .multilineTextAlignment(.center)
            VStack {
                HStack{
                Image("$")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
                    Text("$ \((Double(amount) ?? 0)*3.28)") // in $
                    
                }
                HStack {
                Image("£")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
                Text("£ \((Double(amount) ?? 0)*2.46)") // in £
                }
                HStack{
                Image("€")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
                Text("€ \((Double(amount) ?? 0)*2.70)") // in €
                }
                Image("exchangeCurrency")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150)
            }
                .padding()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
