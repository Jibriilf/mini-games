//
//  ContentView.swift
//  Start
//
//  Created by Jibriil on 24/07/2022.
//

import SwiftUI

struct ContentView: View {
    @State var startTextField = ""
    @State var randomNumber = 0
    @State var chosenNumber = false
    
    var body: some View {
        VStack {
            Text("User: \(randomNumber)!")
            TextField("Choose a number", text: $startTextField)
                .onSubmit {
                    if let startTextField = Int(startTextField) {
                        randomNumber = Int.random(in: 0...startTextField)
                        
                        
                        
                    } else {
                        // raise error to user
                    }
                }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
 
