//
//  EmojiModel.swift
//  Emoji Slot
//
//  Created by Clemens Pfister on 29/07/2016.
//  Copyright © 2016 Clemens Pfister. All rights reserved.
//


import Foundation
import GameKit

struct Emoji{
    let emoji = ["\u{1f602}", //laugh
            "\u{1f603}", //smile
            "\u{2764}" //love
    ]
    var addedEmoji = [String]()
    
     mutating func randomNumberGen(){
        addedEmoji.removeAll()
        for _ in 1...emoji.count{
        let randomNumber = GKRandomSource.sharedRandom().nextInt(withUpperBound: emoji.count)
        addedEmoji.append(emoji[randomNumber])
        }
    }
    
    var outcome: String = ""
        
        mutating func winOrLose() -> String {
            if addedEmoji[0] == "\u{2764}" && addedEmoji[1] == "\u{2764}" && addedEmoji[2] == "\u{2764}"{
                outcome = "You are gaining so much love \u{2764}!"
            } else if addedEmoji[0] == addedEmoji[1] && addedEmoji[0] == addedEmoji[2]{
                outcome = "Congratulations, three in a row!"
            } else {
                outcome = "You lost, try again!"
            }
            return outcome
        }
    }
