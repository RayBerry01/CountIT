//
//  ContentViewModel.swift
//  CountIT
//
//  Created by Ray Berry on 19/08/2022.
//

import Foundation
import SwiftUI

struct ContentViewModel {
    
    var maxNumber = 999
    var numberShown = 0
    var setLimit = 50
    
    /// Decrease count
    /// - Parameter numberShown: number shown on screen
    /// - Returns: number -1
    func decreaseCount(numberShown: Int) -> Int {
        var numberShown = numberShown - 1
        
        if numberShown < 0 {
            numberShown = 0
        }
        return numberShown
    }
    
    /// Increase count
    /// - Parameters:
    ///   - maxNumber: maximum number allowed
    ///   - numberShown: number shown on screen
    /// - Returns: number shown + 1
    func increaseCount(maxNumber: Int, numberShown: Int) -> Int{
        var numberShown = numberShown +  1
        
        if numberShown > maxNumber {
            numberShown = maxNumber
        }
        return numberShown
    }
    
    /// Determine backgreound colour depending upon the limit and the number shown
    /// - Parameters:
    ///   - numberShown: number shown
    ///   - setLimit: set limit
    /// - Returns: the required colour
    func  determineBackgroundColor(numberShown:Int, setLimit: Int) -> Color {
        if numberShown > setLimit {
            return Color.red
        } else {
            return Color.green
        }
    }
    
    
}
