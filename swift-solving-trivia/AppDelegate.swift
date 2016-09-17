//
//  AppDelegate.swift
//  swift-solving-trivia
//
//  Created by Joel Bell on 7/8/16.
//  Copyright © 2016 Joel Bell. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
     
    func solveTrivia(dictionary:[String:String]) -> String {
        var counter = 0
        var answer: String = ""
        
        for (state, capital) in dictionary {
            let stateCharacters = state.lowercaseString.characters
            let capitalCharacters = capital.lowercaseString.characters
        
            for stateCharacter in stateCharacters {
                for capitalCharacter in capitalCharacters {
                    if stateCharacter == capitalCharacter {
                        counter += 1
                    } else if stateCharacter != capitalCharacter {
                        answer = "\(dictionary.keys)"
                    }
                }
            }
        }
         return answer
    }
}
