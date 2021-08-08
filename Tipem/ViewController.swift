//
//  ViewController.swift
//  Tipem
//
//  Created by Darren Freeman on 8/6/21.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
        
        
    }
   
    @IBAction func calculateTip(_ sender: Any) {
        
        let bill = Double(billTextField.text!) ?? 0
        
        let tipPercentages = [0.15, 0.2, 0.3]
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        priceLabel.text = String(format: "$%.2f", total)
    }
    
   
    
    

}

