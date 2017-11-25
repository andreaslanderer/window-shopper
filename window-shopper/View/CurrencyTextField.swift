//
//  CurrencyTextField.swift
//  window-shopper
//
//  Created by Andreas Landerer on 25.11.17.
//  Copyright © 2017 Zuehlke. All rights reserved.
//

import UIKit

@IBDesignable
class CurrencyTextField: UITextField {

    override func awakeFromNib() {
        self.customizeView()
    }
    
    override func prepareForInterfaceBuilder() {
        self.customizeView()
    }
    
    func customizeView() {
        super.awakeFromNib()
        self.backgroundColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 0.25) // Color: #FFF, Alpha: 0.25
        self.layer.cornerRadius = 5.0
        self.textAlignment = .center
        self.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.keyboardType = .decimalPad
        self.keyboardAppearance = .dark
        self.enablesReturnKeyAutomatically = true
        self.setAttributedPlaceholder()
    }
    
    func setAttributedPlaceholder() {
        if let placeholderText = self.placeholder {
            self.attributedPlaceholder = NSAttributedString(string: placeholderText,
                                                            attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
        }
    }
}
