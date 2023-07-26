//
//  ContentView.swift
//  YourAreAwesome
//
//  Created by Alex Labanino on 7/18/23.
//

import SwiftUI

struct ContentView: View {
    @State private var messageString = ""
    @State private var imageName = ""
    @State private var imageNumber = 0
    @State private var messageNumber = 0
    
    var body: some View {
        
        VStack {
            
            Image(imageName)
                .resizable()
                .scaledToFit()
                .cornerRadius(30)
                .shadow(radius: 30)
                .padding()
            
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
                let messages = ["You Are Awesome!",
                                "You Are Greate!",
                                "You Are Fantastic!",
                                "Fabulous? That's You!",
                                "You Make Me Smile!",
                                "When the Genius Bar Needs Help, They Call You!",
                                "I Want To Be Like You!",
                                "Yes, You Are The Man!",
                                "We Need Somebody Like You!"]
                
                // random titles
                messageString = messages[Int.random(in: 0...messages.count-1)]
                
                // random images
                imageName = "image\(Int.random(in: 0...9))"
            
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
