//
//  CardHolder.swift
//  Game V2
//
//  Created by Mathias Larsen on 25/08/2021.
//

import Foundation

class CardHolder {
    let truthDeck = TruthDeck()
    let egoDeck = EgoDeck()
    
    
    func BuildDecks(erotic: Bool, whoAreYou: Bool, whatAboutUs: Bool, player1Gender: String, player2Gender: String) {
        truthDeck.BuildTruthDeck(erotic: erotic, whoAreYou: whoAreYou, whatAboutUs: whatAboutUs)
        egoDeck.BuildEgoDeck(player1Gender: player1Gender, player2Gender: player2Gender)
    }
    
    func DrawCard(fieldType: String, player: Int) -> Card {
        var card: Card
        switch fieldType {
        case "Truth":
            card = truthDeck.DrawTruthCard()
        case "Ego":
            card = egoDeck.DrawCard(player: player)
        default:
            card = Card(type: "Error", decription: "Error")
        }
        return card
    }
}
