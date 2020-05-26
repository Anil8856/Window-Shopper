//
//  CurrencyTextField.swift
//  window-shopper
//
//  Created by clicklabs on 22/05/20.
//  Copyright © 2020 clicklabs. All rights reserved.
//

import UIKit

@IBDesignable
class CurrencyTextField: UITextField {
    
    override func draw(_ rect: CGRect) {
        let size: CGFloat = 20;
        let currencyLabel = UILabel(frame: CGRect(x: 5, y: (frame.size.height / 2) - size / 2, width: size, height: size));
        currencyLabel.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1);
        currencyLabel.textAlignment = .center;
        currencyLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1);
        currencyLabel.layer.cornerRadius = 5.0;
        currencyLabel.clipsToBounds = true;
        
        let formatter = NumberFormatter();
        formatter.numberStyle = .currency;
        formatter.locale = .current;
        currencyLabel.text = formatter.currencySymbol;
                
        addSubview(currencyLabel);
    }
    
    override func prepareForInterfaceBuilder() { //this will run for interface builder
        customizeView();
    }

    override func awakeFromNib() { //this will run at run time, i.e on simulator
        super.awakeFromNib();
        customizeView();
    }
    
    func customizeView(){
        backgroundColor = #colorLiteral(red: 0.9869656736, green: 0.9869656736, blue: 0.9869656736, alpha: 0.249724912);
        layer.cornerRadius = 5.0;
        textAlignment = .center;
        
        clipsToBounds = true;
        
        if let p = placeholder{
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: UIColor.white]);
            attributedPlaceholder = place;
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0);
        }
    }

}
