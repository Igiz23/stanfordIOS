//
//  card.swift
//  my_project
//
//  Created by Maira Reynolds on 7/27/21.
//  Copyright © 2021 Maira Reynolds. All rights reserved.
//

import Foundation

struct Card
{
    var isFaceUp = false
    var isMatch = false
    var identifier: Int
    
    static var identifierNumber = 0
    static func identifierGenerator() -> Int
    {
        identifierNumber += 1
        return identifierNumber
    }
    
    init()
    {
        self.identifier = Card.identifierGenerator()
    }
}
