//
//  ViewController.swift
//  TicTacToe
//
//  Created by Alex Paul on 11/8/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var gamePrompt: UILabel!
    @IBOutlet var gameButtons: [GameButton]!
    
    override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
       
        for button in gameButtons {
            button.setBackgroundImage(nil, for: .normal)
            button.isEnabled = true
        }
    }
    
    var startGame = TicTacToeBrain()
    var gameB = GameButton()
    
    
    
    @IBAction func gameButtonPressed(_ gameButton: GameButton) {
        if startGame.playerOne == 0 {
            startGame.gameMatrix[gameButton.row][gameButton.col] = "x"
            gameButton.setBackgroundImage(UIImage(named: "knifeX"), for: .normal)
            startGame.playerOne = 1
        } else {
            gameButton.setBackgroundImage(UIImage(named: "pumpkinO"), for: .normal)
            startGame.gameMatrix[gameButton.row][gameButton.col] = "o"
            
            startGame.playerOne = 0
        }
        gamePrompt.text = startGame.winCondition("x", "o")
        print(gamePrompt.text ?? "bleep")
        print(startGame.gameMatrix)
        
            }
    
    
    
    
    
    
    
    
    @IBAction func resetButton(_ sender: UIButton) {

    }
    
    
    
    
    
}
        
    
    


    

