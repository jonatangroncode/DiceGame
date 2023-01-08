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
        ZStack{
            Color(red: 51/256, green: 106/256, blue: 61/256)
        
        VStack{
        
        Image(systemName: "die.face.\(diceNumber)")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .padding()
            
            Button(action: {
                roll()
            }) {
                
                Text("roll")
                    .font(.largeTitle)
                    .foregroundColor(Color.white)
            }
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
