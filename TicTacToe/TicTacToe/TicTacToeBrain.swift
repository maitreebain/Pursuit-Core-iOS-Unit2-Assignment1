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
  
    var gameMatrix = [["","",""], ["","",""], ["","",""]]
    
    
    func winCondition() -> String {
        var scoreOne = 0
        var scoreTwo = 0
        var playerWin = ""
    
    for arr in gameMatrix {
    if arr == ["x","x","x"] {
        scoreOne += 1
        print("P1 wins!")
        playerWin = "Player One wins"
        return playerWin
        
    } else if arr == ["o","o","o"] {
        scoreTwo += 1
        print("P2 wins")
        playerWin = "Player Two wins"
        return playerWin
        }
        }
        
        return ""
        
//        for array in gameMatrix{
//            for (index, value) in array.enumerated(){
//                if value
//
                
                
            }
        }

    
    
    
