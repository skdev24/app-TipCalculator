//
//  ViewController.swift
//  TipsyCalcApp
//
//  Created by Shivam Dev on 12/05/18.
//  Copyright © 2018 Shivam Dev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var tipPercentageSlider: UISlider!
    @IBOutlet weak var tipPercentageLbl: UILabel!
    @IBOutlet weak var tipLbl: UILabel!
    @IBOutlet weak var totalLbl: UILabel!
    @IBOutlet weak var splitPerson: UILabel!
    @IBOutlet weak var splitAmount: UILabel!
    @IBOutlet weak var splitSlider: UISlider!
    
    var tip = TipModel(billAmount: 0.0, tipPercent: 0.0, splitPerson: 1)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setTipCalculation()
        updateUI()
    }
    
    func setTipCalculation() {
        tip.tipPercent = Double(tipPercentageSlider.value)
        tip.billAmount = ((textField.text)! as NSString).doubleValue
        tip.calculateTip()
        tip.splitPerson = Int(splitSlider.value)
        tip.calculateSplitAmount()
    }
    
    func updateUI() {
        tipLbl.text = String(format: "$%0.2f", tip.tipAmount)
        totalLbl.text = String(format: "$%0.2f", tip.totalAmount)
        tipPercentageLbl.text = "Tip: \(Int(tipPercentageSlider.value * 100))%"
        splitAmount.text = String(format: "$%0.2f", tip.splitAmount)
        splitPerson.text = "\(tip.splitPerson)-Way Split"
    }
    
    

    @IBAction func billAmountChanged(_ sender: Any) {
        setTipCalculation()
        updateUI()
    }
    @IBAction func tipPercentageDidChange(_ sender: UISlider) {
        let steps: Float = 100
        let roundedValue = round(sender.value * steps) / steps
        sender.value = roundedValue
        setTipCalculation()
        updateUI()
    }
    
    @IBAction func splitViewDidChange(_ sender: UISlider) {
        setTipCalculation()
        updateUI()
    }
    
    
}

