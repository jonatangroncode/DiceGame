//
//  ContentView.swift
//  DiceGame
//
//  Created by Admin on 2023-01-07.
//

import SwiftUI

struct ContentView: View {
    var diceNumber = 4
    
    var body: some View {
        
        Image(systemName: "die.face.\(diceNumber)")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .padding()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}
