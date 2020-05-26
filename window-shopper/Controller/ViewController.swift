//
//  ViewController.swift
//  window-shopper
//
//  Created by clicklabs on 22/05/20.
//  Copyright © 2020 clicklabs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var wageText: CurrencyTextField!;
    @IBOutlet weak var priceText: CurrencyTextField!;
    
    @IBOutlet weak var resultLable: UILabel!
    @IBOutlet weak var hoursLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calcBtn = UIButton(frame: CGRect(x: 0, y:0, width: view.frame.size.width, height: 60));

        calcBtn.backgroundColor = #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1);
        calcBtn.setTitle("Calculate", for: .normal);
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal);
        calcBtn.addTarget(self, action: #selector(ViewController.calculate), for: .touchUpInside);

        //now setting calcBtn on Text fields as accessory view
        wageText.inputAccessoryView = calcBtn;
        priceText.inputAccessoryView = calcBtn;
        
        resultLable.isHidden = true;
        hoursLabel.isHidden = true;
    }
    
    //when working with selectors, it calls a function that will be called at a later point of time. It is using Objective-C runtime function, hench @objc
    
    @objc func calculate(){
        if let wageText = wageText.text, let priceText = priceText.text {
            if let wage = Double(wageText), let price = Double(priceText) {
                view.endEditing(true); //dismiss keyboard
                resultLable.isHidden = false;
                hoursLabel.isHidden = false;
                resultLable.text = "\(Wage.getHours(forWage: wage, andPrice: price))";
            }
        }
    }

    @IBAction func clearCalculatorPressed(_ sender: Any) {
        resultLable.isHidden = true;
        hoursLabel.isHidden = true;
        wageText.text = "";
        priceText.text = "";
    }
    
}

