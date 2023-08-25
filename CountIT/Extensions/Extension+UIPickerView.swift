//
//  Extension+UIPickerView.swift
//  CountIT
//
//  Created by Ray Berry on 12/09/2022.
//

import UIKit

/// Exenstion to clip picker view widths
extension  UIPickerView {
    open override var intrinsicContentSize: CGSize {
        return CGSize(width: UIView.noIntrinsicMetric, height: super.intrinsicContentSize.height)}
    
}
