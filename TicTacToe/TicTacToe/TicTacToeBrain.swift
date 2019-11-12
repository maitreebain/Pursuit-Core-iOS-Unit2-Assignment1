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
 
    var scoreOne = 0
    var scoreTwo = 0
    var playerWin = ""
    
    func winCondition() -> String {
    
    for arr in gameMatrix {
    if arr == ["x","x","x"] {
        scoreOne += 1
        print("P1 wins")
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
}

    func diagonalWinCondition(_ x: String, _ o: String) -> String{
        var count = 0
        
        
    for (arrIndex, arrValue) in gameMatrix.enumerated(){
        for (index, value) in arrValue.enumerated(){
            if arrIndex == index {
                if value == x {
                    count += 1
                } else if value == o {
                    count += 1
                    
                }
            }
            if count == 3{
                return "Player \(value) won"
            }
}
}
//        if count == 3{
//            return " won"
//        }
        count = 0
        
        var diagNum = 0
        for value in 0..<gameMatrix.count{
            diagNum = gameMatrix[value].count - 1
            if gameMatrix[value][diagNum - value] == x {
                count += 1
                if count == 3{
                    return "Player \(x) won"
                }
            } else if gameMatrix[value][diagNum - value] == o {
                count += 1
                if count == 3{
                    return "Player \(o) won"
                }
            }
            


        }
            
    return "keep playing" // error
}
    
    
    
}
//}
//}
