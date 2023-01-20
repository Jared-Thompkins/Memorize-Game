//
//  EmojiMemoryGame_ViewModel.swift
//  MemorizeGame
//
//  Created by Jared Thompkins on 1/15/23.
//

import SwiftUI

func makeCardContent(index: Int) -> String {
    return "🚗"
}

class EmojiMemoryGame {
    private(set) var model: MemoryGame<String> = MemoryGame(numberOfPairsOfCards: 4, createCardContent: makeCardContent)
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
}
