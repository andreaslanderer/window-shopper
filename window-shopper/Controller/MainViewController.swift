//
//  ViewController.swift
//  window-shopper
//
//  Created by Andreas Landerer on 25.11.17.
//  Copyright © 2017 Zuehlke. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var wageTextField: CurrencyTextField!
    @IBOutlet weak var priceTextField: CurrencyTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calculateButton = UIButton(frame: CGRect(
            x: 0,
            y: 0,
            width: self.view.frame.size.width,
            height: 60))
        calculateButton.backgroundColor = #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)
        calculateButton.setTitle("Calculate", for: .normal)
        calculateButton.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calculateButton.addTarget(
            self,
            action: #selector(MainViewController.calculate),
            for: .touchUpInside)
        
        self.wageTextField.inputAccessoryView = calculateButton
        self.priceTextField.inputAccessoryView = calculateButton
        
    }
    
    @objc func calculate() {
        print("Called calculate...")
    }
}

