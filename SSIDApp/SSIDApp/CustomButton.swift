//
//  CustomButton.swift
//  SSIDApp
//
//  Created by Admin on 25/02/21.
//

import UIKit

class CustomButton: UIButton {
    
    @IBInspectable var selectedBGColor:UIColor = UIColor(red: 245/255, green: 216/255, blue: 108/255, alpha: 1.0)
    @IBInspectable var unselectedBGColor:UIColor = UIColor(red: 240/255, green: 244/255, blue: 252/255, alpha: 1.0)

    override var isSelected: Bool {
        didSet {
            self.backgroundColor = isSelected ? selectedBGColor : unselectedBGColor
        }
    }
    
    @IBInspectable var cornerRadius:CGFloat = 0.0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
            self.clipsToBounds = true
        }
    }
    
    @IBInspectable var borderColor:UIColor = .black{
        didSet {
            self.layer.borderColor = borderColor.cgColor
        }
    }
}
