//
//  ContentView.swift
//  YourAreAwesome
//
//  Created by Alex Labanino on 7/18/23.
//

import SwiftUI

struct ContentView: View {
    @State private var messageString = ""
    
    var body: some View {
        
        VStack {
            
            Spacer()
            
            Text(messageString)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
                .foregroundColor(.black)
                .frame(height: 150)
                .frame(maxWidth: .infinity)
                .padding()
            
            Spacer()
            
            Button("Show Message") {
                let message1 = "You Are Awesome!"
                let message2 = "You Are Great!"
                
//                if messageString == message1 {
//                    messageString = message2
//                } else {
//                    messageString = message1
//                }
                // ternary version
                messageString = (messageString == message1 ? message2 : message1)
            }
            .buttonStyle(.borderedProminent)
            
        }
        .padding()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
