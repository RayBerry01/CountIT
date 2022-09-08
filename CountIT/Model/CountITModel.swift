//
//  CountITModel.swift
//  CountIT
//
//  Created by Ray Berry on 21/08/2022.
//

import Foundation

struct CountITModel {
    
    var maxNumber = 999
    var numberShown = 0
    var setLimit = 50
    
    /// Decrease count
    /// - Parameter numberShown: number shown on screen
    /// - Returns: number - 1
    func decreaseCount(numberShown: Int) -> Int {
        let numberShown = numberShown - 1

        return numberShown < 0 ? 0 : numberShown
    }
    
    /// Increase count
    /// - Parameters:
    ///   - maxNumber: maximum number allowed
    ///   - numberShown: number shown on screen
    /// - Returns: number shown + 1
    func increaseCount(maxNumber: Int, numberShown: Int) -> Int{
        let numberShown = numberShown +  1
        return numberShown > maxNumber ? maxNumber : numberShown
    }
}
