//
//  ViewController.swift
//  my_project
//
//  Created by Maira Reynolds on 7/25/21.
//  Copyright © 2021 Maira Reynolds. All rights reserved.
//

import UIKit ///импорт фреймворка

class ViewController: UIViewController
{
 
    var game = ConcentrationGames()
    var touches = 0
    {
        didSet
        {
            touch_label.text = "Touches: \(touches)";
        }
    }
    
    func flipButton(emoji: String, button: UIButton)
    {
        if button.currentTitle == emoji
        {
            button.setTitle("", for: .normal);
            button.backgroundColor = #colorLiteral(red: 1, green: 0.5615502, blue: 0, alpha: 1);
        }
        else
        {
            button.setTitle(emoji, for: .normal);
            button.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0);
        }
    }
    
let emojiColection  =  ["🐱", "🐤", "🐷", "🐻", "🐴", "🦖"]
    
    
    
    @IBOutlet var button_collection: [UIButton]!
    @IBOutlet weak var touch_label: UILabel!
    @IBAction func button_action(_ sender: UIButton)
    {
        touches += 1
        if let buttonIndex = button_collection.firstIndex(of: sender)
        {
            game.chooseCard(at: buttonIndex)
        }
    }
}

