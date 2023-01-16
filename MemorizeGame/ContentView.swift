//
//  ContentView.swift
//  MemorizeGame
//
//  Created by Jared Thompkins on 1/14/23.
//

import SwiftUI

struct ContentView: View {
    var emojis = ["🧦", "🧵", "🏃‍♀️", "🐳", "🐖", "🪵", "☘️", "🥇", "🏄‍♀️", "🎹", "🎲", "🎪", "🎧", "🗽", "🔭"]
    @State var emojiCount = 15
    
    var body: some View {
        VStack {
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 65))]) {
                    ForEach(emojis[0..<emojiCount], id: \.self) { emoji in
                        CardView(content: emoji)
                            .aspectRatio(2/3, contentMode: .fit)
                        
                    }
                }
            }
            .foregroundColor(.red)
            Spacer()
            HStack {
                remove
                Spacer()
                add
            }
            .font(.largeTitle)
            .padding(.horizontal)
        }
    }

    var remove: some View {
        Button (action: {
            if emojiCount > 1 {
                emojiCount -= 1
            }
        }, label: {
            Image(systemName: "minus.circle")
        })
        }

    var add: some View {
        Button (action: {
            if emojiCount < emojis.count {
                emojiCount += 1
            }
        }, label: {
            Image(systemName: "plus.circle")
        })
        }
    
}


struct CardView: View {
    var content: String
    @State var isFaceup: Bool = true
    
    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 20)
            if isFaceup {
                shape.fill().foregroundColor(.white)
                shape.stroke(lineWidth: 3)
                Text(content).font(.largeTitle)
            } else {
                shape.fill()
            }
        }
        .onTapGesture {
            isFaceup = !isFaceup
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
