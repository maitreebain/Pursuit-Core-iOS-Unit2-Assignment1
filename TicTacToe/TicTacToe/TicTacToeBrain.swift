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
    
    
    func winCondition(_ x: String, _ o: String) -> String {
        var count = 0
        
//        for (oIndex, outerArr) in gameMatrix.enumerated(){
//            for (iIndex, innerArr) in outerArr.enumerated() {
//                if {
//                    if innerArr == x{
//                        count += 1
//                    } else if innerArr == o{
//                        count += 1
//                    }
//                }
//                if count == 3 {
//                    return "Player \(innerArr) won!"
//                }
//            }
//        }
                
                
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
                return "Keep Playing"
}
 
    
    
}
