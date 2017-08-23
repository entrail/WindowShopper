//
//  ViewController.swift
//  WindowShopper
//
//  Created by Adrian horstmann on 20.08.17.
//  Copyright © 2017 Adrian Horstmann. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var wageTxt: CurrencyTextField!
    @IBOutlet weak var priceTxt: CurrencyTextField!
    @IBOutlet weak var labelDaysToWork: UILabel!
    @IBOutlet weak var labelHours: UILabel!
    
    
    override func viewDidLoad() {
       super.viewDidLoad()
        
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor = UIColor.orange
        //always use .setTitle instead of .title for a Button
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(UIColor.white, for: .normal)
        calcBtn.addTarget(self, action: #selector(MainViewController.calculate), for: .touchUpInside)
        
        wageTxt.inputAccessoryView = calcBtn
        priceTxt.inputAccessoryView = calcBtn
        
        resetView()
       
    }

    @objc func calculate() {
        if let wageTxt = wageTxt.text, let priceTxt = priceTxt.text {
            if let wage = Double(wageTxt), let price = Double(priceTxt) {
                view.endEditing(true)
                labelDaysToWork.isHidden = false
                labelHours.isHidden = false
                labelDaysToWork.text = "\( Wage.getHours(forWage: wage, andPrice: price))"
            }
        }
    }
    
    
    @IBAction func clearCalculatorButtonPressed(_ sender: Any) {
        resetView()
    }
    
    func resetView() {
        labelDaysToWork.isHidden = true
        labelHours.isHidden = true
        wageTxt.text = ""
        priceTxt.text = ""
    }
    
}

