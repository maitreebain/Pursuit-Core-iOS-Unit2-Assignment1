//
//  TicTacToeBrain.swift
//  TicTacToe
//
//  Created by Alex Paul on 11/8/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import Foundation

class TicTacToeBrain {
    
    var scoreOne = 0
    var scoreTwo = 0
    
    var playerOne = 0
  
    var gameMatrix = [["","",""], ["","",""], ["","",""]]
    
    var ViewControl = ViewController()
    
    func winCondition() {
        
        if gameMatrix.contains(["x","x","x"]) {
            scoreOne += 1
            ViewControl.gamePrompt.text = "Player One wins! Score: \(scoreOne)"
        } else if gameMatrix.contains(["o","o","o"]) {
            scoreTwo += 2
            ViewControl.gamePrompt.text = "Player Two wins! Score: \(scoreTwo)"
        }
        
        
        
    }

    
//    func populate(_ gameButton: GameButton) {
//        if playerOne == 0 {
//            gameMatrix[gameButton.row][gameButton.col] = "x"// .row - //
//            playerOne = 1
//        } else {
//            gameMatrix[gameButton.row][gameButton.col] = "o"
//            playerOne = 0
//        }
//        print(gameMatrix)
//    }
    
    
    
}
