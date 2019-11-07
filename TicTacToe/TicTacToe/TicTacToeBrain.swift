//
//  TicTacToeBrain.swift
//  TicTacToe
//
//  Created by Alex Paul on 11/8/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import Foundation

class TicTacToeBrain {
    
    var playerOne = 0
  
    var gameMatrix = [["","",""], ["","",""],["","",""]]
    
    func populate(_ gameButton: GameButton) {
        if playerOne == 0 {
            gameMatrix[gameButton.row][gameButton.col] = "x"// .row - //
            gameMatrix.append(["x"])
            playerOne = 1
        } else {
            gameMatrix[gameButton.row][gameButton.col] = "o"
            gameMatrix.append(["o"])
            playerOne = 0
        }
    }
    
}
