//
//  CustomizedView.swift
//  SetUpDemo
//
//  Created by TBCASoft-Bennett on 2022/2/17.
//

import UIKit

@IBDesignable class CustomizedView: UIView {

    @IBInspectable var boarderWidth: CGFloat = 0.0 {
        didSet {
            layer.borderWidth = boarderWidth
            layer.masksToBounds = boarderWidth > 0
        }
    }
    
    @IBInspectable var boarderColor: UIColor = .clear {
        didSet {
            layer.borderColor = boarderColor.cgColor
            layer.masksToBounds = boarderColor != .clear
        }
    }
    
    @IBInspectable var boarderCornerRadius: CGFloat = 0.0 {
        didSet {
            layer.cornerRadius = boarderCornerRadius
            self.clipsToBounds = boarderCornerRadius > 0
        }
    }
}
