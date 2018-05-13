//
//  TipModel.swift
//  TipsyCalcApp
//
//  Created by Shivam Dev on 12/05/18.
//  Copyright © 2018 Shivam Dev. All rights reserved.
//

import Foundation


class TipModel {
    
    private var _tipAmount: Double = 0
    private var _billAmout: Double = 0
    private var _tipPercent: Double = 0
    private var _totalAmount: Double = 0
    private var _splitPerson: Int = 0
    private var _splitAmount: Double = 0
    
    var billAmount: Double {
        get {
            return _billAmout
        }
        set {
            _billAmout = newValue
        }
    }
    
    var tipPercent: Double {
        get {
            return _tipPercent
        }
        set {
            _tipPercent = newValue
        }
    }
    
    var splitPerson: Int {
        get {
            return _splitPerson
        }
        set {
            _splitPerson = newValue
        }
    }
    
    var splitAmount: Double {
        return _splitAmount
    }
    
    var tipAmount: Double {
        return _tipAmount
    }
    
    var totalAmount: Double {
        return _totalAmount
    }
    
    init(billAmount: Double, tipPercent: Double, splitPerson: Int) {
        self._billAmout = billAmount
        self._tipPercent = tipPercent
        self._splitPerson = splitPerson
    }
    
    func calculateTip() {
        _tipAmount = billAmount * tipPercent
        _totalAmount = _tipAmount + billAmount
    }
    
    func calculateSplitAmount() {
        _splitAmount = _totalAmount / Double(splitPerson)
    }
    
    
}
















