//
//  CurrencyTextField.swift
//  WindowShopper
//
//  Created by Adrian horstmann on 20.08.17.
//  Copyright © 2017 Adrian Horstmann. All rights reserved.
//

import UIKit

@IBDesignable
class CurrencyTextField: UITextField {
    
    override func draw(_ rect: CGRect) {
        //Adding a custom label showing the locale currency sign within the TextField
        let size: CGFloat = 20
        let currencyLbl = UILabel(frame: CGRect(x: 5, y: (frame.size.height / 2) - size / 2, width: size, height: size))
        currencyLbl
        .backgroundColor = #colorLiteral(red: 0.731400698, green: 0.731400698, blue: 0.731400698, alpha: 0.6247056934)
        currencyLbl.textAlignment = .center
        currencyLbl.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        currencyLbl.layer.cornerRadius = 5.0
        currencyLbl.clipsToBounds = true
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        currencyLbl.text = formatter.currencySymbol
        addSubview(currencyLbl)
    }
    
    override func prepareForInterfaceBuilder() {
        customizeView()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
        
        
    }
    

    func customizeView() {
        //Write Color Literal
        backgroundColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 0.2504013271)
        layer.cornerRadius = 5.0
        textAlignment = .center
        clipsToBounds = true
        
        if (placeholder == nil) {
            placeholder = " "
        }
        
        let place = NSAttributedString(string: placeholder!, attributes: [.foregroundColor: UIColor.white])
        
        attributedPlaceholder = place
        textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }
    
   }
