//
//  ViewController.swift
//  Tip Calculator
//
//  Created by j Wang on 9/22/16.
//  Copyright © 2016 jonwang. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

  @IBOutlet var tipLabel: UILabel!
  @IBOutlet var totalLabel: UILabel!
  @IBOutlet var billTextField: UITextField!
  @IBOutlet var sliderValue: UISlider!
  @IBOutlet var serverLabel: UILabel!
  
  
  @IBAction func sliderChanged(_ sender: AnyObject) {
    
    let slider = Int(sliderValue.value)
    
    if slider >= 80 {
      
      serverLabel.text = "Service was top tier!"
      
    } else if slider < 80 && slider >= 40 {
      
      serverLabel.text = "Service was ok"
      
    } else if slider < 40 && slider >= 0 {
      
      serverLabel.text = "Service wasn't very good"
    }
  }
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  @IBAction func calculateTip(_ sender: AnyObject) {
    
    if let billEntered = billTextField.text {
      
      if let billDouble = Double(billEntered) {
        
        let bill = billDouble
        totalLabel.text = String(bill * 2)
      }
    }
  }
  
  
  
  
  
  
  
  
  //when tapped outside of keyboard or return, close keyboard
  
  @IBAction func onTap(_ sender: AnyObject) {
    
    view.endEditing(true)
  }
  
  public func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    textField.resignFirstResponder()
    
    return true
  }

}

