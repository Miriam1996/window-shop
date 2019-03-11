//
//  ViewController.swift
//  window-shopper
//
//  Created by Test on 3/11/19.
//  Copyright © 2019 miriam schnoll. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    
    @IBOutlet weak var WageText: CurrencyTextField!
    @IBOutlet weak var PriceText: CurrencyTextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var hoursLabel: UILabel!
    @IBAction func ClearCalculatorPressed(_ sender: Any) {
        resultLabel.isHidden = true
        hoursLabel.isHidden = true
        WageText.text = ""
        PriceText.text = ""
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        // Do any additional setup after loading the view, typically from a nib.
        let calcBtn = UIButton(frame: CGRect(x:0 ,y:0, width: view.frame.size.width,height:60))
        calcBtn.backgroundColor = #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)
        calcBtn.setTitle("Calculate" , for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        WageText.inputAccessoryView = calcBtn
        PriceText.inputAccessoryView = calcBtn
        resultLabel.isHidden = true
        hoursLabel.isHidden = true
    }
    @objc func calculate(){
        
        if let wageTxt = WageText.text , let priceText = PriceText.text{
            if let wage = Double(wageTxt), let price = Double(priceText){
            view.endEditing(true)
            resultLabel.isHidden = false
            hoursLabel.isHidden = false
            resultLabel.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
            
            }
        }
        
    }


}

