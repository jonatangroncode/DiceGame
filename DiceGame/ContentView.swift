//
//  ContentView.swift
//  DiceGame
//
//  Created by Admin on 2023-01-07.
//

import SwiftUI

struct ContentView: View {
    @State var diceNumber = 4
    
    var body: some View {
        
        VStack{
        
        Image(systemName: "die.face.\(diceNumber)")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .padding()
            
            Button(action: {
                roll()
            }) {
                
                Text("roll")
            }
            
        }
    }
    
    func roll() {
        diceNumber = Int.random(in: 1...6)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}
