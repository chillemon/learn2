//
//  CalculationProcessor.swift
//  learn2
//
//  Created by 中原雄太 on 2019/01/06.
//  Copyright © 2019年 中原雄太. All rights reserved.
//

import Foundation
import UIKit

class calculationProcessor: ViewController {
    class var xTextField: UITextField! {
        return nil
    }
    class var ytextField: UITextField! {
        return nil
    }
    func calculation() {
        
    }
}

extension calculationProcessor: CalculationDelegate {
    func plusButtonDidTapped() {
     //ここに足し算の計算式を書く
        let intX: Int! = Int(xTextField.text!)
        let intY: Int! = Int(yTextField.text!)
        
        let result = intX + intY
        
        resultLabel.text = String(result)
    }
}
