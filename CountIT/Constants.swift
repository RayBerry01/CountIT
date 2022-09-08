//
//  Constants.swift
//  CountIT
//
//  Created by Ray Berry on 19/08/2022.
//

import Foundation
struct Constants {
    
    enum Icons: String {
        case doubleArrow = "arrow.left.arrow.right.circle"
        case upArrow = "arrow.up.circle"
        case plusCircle = "plus.circle.fill"
        case minusCircle = "minus.circle.fill"
        case xMarkCircle = "xmark.circle"
        case paperPlane = "paperplane"
    }
    
    enum LocalText: String {
        case setLimit = "Set Limit"
    }

    enum AccessibilityText: String {
       case switchSides =  "Switch sides for count buttons"
       case setLimit = "Set limit for count"
       case incrementCount = "Increment count"
       case reduceCount = "Reduce count"
    }
}



