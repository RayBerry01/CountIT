//
//  ContentViewModel.swift
//  CountIT
//
//  Created by Ray Berry on 19/08/2022.
//

import Foundation
import SwiftUI

struct ContentViewModel {
    

    
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
