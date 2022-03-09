//
//  CustomizedButton.swift
//  SetUpDemo
//
//  Created by TBCASoft-Bennett on 2022/2/17.
//

import UIKit

@IBDesignable class CustomizedButton: UIButton {
    
    @IBInspectable var cornerRadiusRight: Bool = false {
        didSet {
            guard cornerRadiusRight else { return }
            layer.cornerRadius = self.layer.frame.height / 2
            layer.maskedCorners = [.layerMinXMinYCorner, .layerMinXMaxYCorner]
        }
    }

    @IBInspectable var cornerRadiusLeft: Bool = false {
        didSet {
            guard cornerRadiusLeft else { return }
            layer.cornerRadius = self.layer.frame.height / 2
            layer.maskedCorners = [.layerMaxXMinYCorner, .layerMaxXMaxYCorner]
        }
    }
    
    @IBInspectable var borderColor: UIColor = .clear {
        didSet {
            layer.borderColor = borderColor.cgColor
            layer.masksToBounds = borderColor != .clear
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 0.0 {
        didSet {
            layer.borderWidth = borderWidth
            layer.masksToBounds = borderWidth > 0
        }
    }
    
    
    func setUnderline (_ title: String) {
        let underLineAttributes: [NSAttributedString.Key: Any] = [
            .underlineStyle: NSUnderlineStyle.single.rawValue
        ]
        
        let attributeString = NSMutableAttributedString(string: title, attributes: underLineAttributes)
        self.setAttributedTitle(attributeString, for: .normal)
    }
    

}
