//
//  ContentViewModel.swift
//  CountIT
//
//  Created by Ray Berry on 19/08/2022.
//

import Foundation
import SwiftUI

/// Content View Appreance
protocol ContentViewAppearance {
    func determineBackgroundColor(numberShown:Int, setLimit: Int) -> Color
}

class ContentViewModel: ContentViewAppearance, ObservableObject {
    
    
    /// Default font color
    /// - Returns: default font color
    func imageFontColor() -> Color {
        return .white
    }
    
    /// Default item font size
    /// - Returns: returns default font size
    func imageFontSize() -> Font {
        return .system(size: 80.0)
    }
    
    
    /// Determine background colour depending upon the limit and the number shown
    /// - Parameters:
    ///   - numberShown: number shown
    ///   - setLimit: set limit
    /// - Returns: the required colour
    func  determineBackgroundColor(numberShown:Int, setLimit: Int) -> Color {
        return numberShown > setLimit ? Color.red : Color.green
    }
}
