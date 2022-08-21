//
//  Extension+BinaryInteger.swift
//  CountIT
//
//  Created by Ray Berry on 21/08/2022.
//

import Foundation


extension BinaryInteger {
    var digits: [String] {
        return String(describing: self).compactMap {String($0) }
    }
}
