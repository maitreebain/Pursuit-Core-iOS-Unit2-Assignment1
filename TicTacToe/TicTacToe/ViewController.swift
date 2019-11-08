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
            gamePrompt.text = "Player One's turn!"
            startGame.gameMatrix[gameButton.row][gameButton.col] = "x"
            gameButton.setBackgroundImage(UIImage(named: "knifeX"), for: .normal)
            if startGame.diagonalWinCondition("x") {
            }
            startGame.playerOne = 1
        } else {
            gamePrompt.text = "Player Two's turn!"
            gameButton.setBackgroundImage(UIImage(named: "pumpkinO"), for: .normal)
            startGame.gameMatrix[gameButton.row][gameButton.col] = "o"
        
            startGame.playerOne = 0
        }
        gamePrompt.text = startGame.winCondition()
        gamePrompt.text = startGame.diagonalWinCondition()
        print(startGame.gameMatrix)
        gameButton.isEnabled = false
        
            }
    
    
    
    
    
    
    
    
    @IBAction func resetButton(_ sender: UIButton) {
    }
    
    
    
    
    
}
        
    
    


    

