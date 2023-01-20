//
//  MemoryGameModel.swift
//  MemorizeGame
//
//  Created by Jared Thompkins on 1/15/23.
//

import Foundation

struct MemoryGame<CardContent> {
   private(set) var cards: Array<Card>
    
    
    
    init(numberOfPairsOfCards: Int, createCardContent: (Int) -> CardContent) {
        cards = Array<Card>()
        for pairIndex in 0..<numberOfPairsOfCards {
            let content = createCardContent(pairIndex)
            cards.append(Card(content: content))
            cards.append(Card(content: content))
        }
    }
    
    
    struct Card {
        var isFaceup: Bool = false
        var isMatched: Bool = false
        var content: CardContent
    }
    
}
