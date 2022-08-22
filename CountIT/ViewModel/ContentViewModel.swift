//
//  ContentViewModel.swift
//  CountIT
//
//  Created by Ray Berry on 19/08/2022.
//

import Foundation
import SwiftUI

/// ContentViewAppreance
protocol ContentViewAppearance {
    func determineBackgroundColor(numberShown:Int, setLimit: Int) -> Color
}

struct ContentViewModel: ContentViewAppearance {
    
    func imageFontColor() -> Color {
        return .white
    }
    
    func imageFontSize() -> Font {
     return .system(size: 80.0)
    }
    
    /// Determine background colour depending upon the limit and the number shown
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
