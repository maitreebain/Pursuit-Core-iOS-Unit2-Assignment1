//
//  ViewController.swift
//  TicTacToe
//
//  Created by Alex Paul on 11/8/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var gameButtons: [GameButton]!
    
    override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
       
        for button in gameButtons {
            button.setBackgroundImage(nil, for: .normal)
            button.isEnabled = true
        }
    }
    
    var gamesWon = 0
    
    @IBAction func gameButtonPressed(_ gameButton: GameButton) {
        print("row \(gameButton.row) at colum \(gameButton.col) was selected.")

        if playerOne == 0 {
        for button in gameButtons{
            
        }
        }
        
        
    }
    
    
    
    
    @IBAction func resetButton(_ sender: UIButton) {
    }

    
    
    
}
