//
//  ContentView.swift
//  DiceGame
//
//  Created by Admin on 2023-01-07.
//

import SwiftUI

struct ContentView: View {
    @State var diceNumber1 = 4
    @State var diceNumber2 = 4

    
    var body: some View {
        ZStack{
            Color(red: 51/256, green: 106/256, blue: 61/256)
        
        VStack{
            HStack{
            DiceView(n: diceNumber1)
            DiceView(n: diceNumber2)
            }
            Button(action: {
                roll()
            }) {
                
                Text("roll")
                    .font(.largeTitle)
                    .foregroundColor(Color.white)
                    .padding(.horizontal)
            }
            .background(Color.red)
            .cornerRadius(15.0)
          }
        }
    }
    
    func roll() {
        diceNumber1 = Int.random(in: 1...6)
        diceNumber2 = Int.random(in: 1...6)

    }
}

struct DiceView : View {
    let n: Int
    
    var body: some View{
       
        
        Image(systemName: "die.face.\(n)")
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
