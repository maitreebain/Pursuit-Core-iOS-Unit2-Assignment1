//
//  TicTacToeBrain.swift
//  TicTacToe
//
//  Created by Alex Paul on 11/8/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import Foundation

class TicTacToeBrain {
    
    var playerOne = 3
    var playerTwo = 2
  
    var gameMatrix = [["","",""], ["","",""],["","",""]]
    
    func populate(_ gameButton: GameButton) {
        if playerOne % 2 == 0 {
            gameMatrix[gameButton.row][gameButton.col] = "x"// .row - //
        } else if playerTwo % 2 == 1 {
            gameMatrix[gameButton.row][gameButton.col] = "o"
        }
    }
}
