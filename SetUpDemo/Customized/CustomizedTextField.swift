//
//  CustomizedTextView.swift
//  SetUpDemo
//
//  Created by TBCASoft-Bennett on 2022/2/17.
//

import UIKit

@IBDesignable class CustomizedTextField: UITextField {

    
    @IBInspectable var borderWidth: CGFloat = 0.0 {
        didSet {
            layer.borderWidth = borderWidth
            layer.masksToBounds = borderWidth > 0
        }
    }
    
    @IBInspectable var boarderColor: UIColor = .clear {
        didSet {
            layer.borderColor = boarderColor.cgColor
            layer.masksToBounds = boarderColor != .clear
        }
    }
    
    @IBInspectable var cornerRadius: CGFloat = 0.0 {
        didSet {
            layer.cornerRadius = cornerRadius
            layer.masksToBounds = cornerRadius > 0
        }
    }
    
    
    
}
