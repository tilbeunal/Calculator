//
//  ViewController.swift
//  Calculator
//
//  Created by Tilbe Ünal on 20.10.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstText: UITextField!

    @IBOutlet weak var secondText: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    var result = 0
    
    var erim: String?  // bir şeye eşit olmadığı için yokluk = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    @IBAction func sumClicked(_ sender: Any) {
        //   let firstNumber = Int(firstText.text!)!   // ilk ünlem text field dan bir text değeri gelecek ikinci ünlem bunu kesinlikle int çevirebilirsin demek. ama kesin dediği için kullanıcı harf yazdığında app çöker
      
        if let firstNumber = Int(firstText.text!) {
            if let secondNumber = Int(secondText.text!) {
                result = firstNumber + secondNumber
                resultLabel.text = String(result)
            }
        }
    }
    
    @IBAction func minusClicked(_ sender: Any) {
       
        if let firstNumber = Int(firstText.text!) {
            if let secondNumber = Int(secondText.text!) {
                result = firstNumber - secondNumber
                resultLabel.text = String(result)
            }
        }
    }
    
    
    @IBAction func multiplyClicked(_ sender: Any) {
        if let firstNumber = Int(firstText.text!) {
            if let secondNumber = Int(secondText.text!) {
                result = firstNumber * secondNumber
                resultLabel.text = String(result)
            }
        }
    }
    
    
    @IBAction func divideClicked(_ sender: Any) {
        if let firstNumber = Int(firstText.text!) {
            if let secondNumber = Int(secondText.text!) {
                result = firstNumber / secondNumber
                resultLabel.text = String(result)
            }
        }
    }
}
