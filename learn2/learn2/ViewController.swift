//
//  ViewController.swift
//  learn2
//
//  Created by 中原雄太 on 2019/01/03.
//  Copyright © 2019年 中原雄太. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    weak var delegate: CalculationDelegate?
    
    var button: UIButton!
    var resultLabel = UILabel()
    
    var xTextField: UITextField!
    var yTextField: UITextField!
   

    override func viewDidLoad() {
        super.viewDidLoad()
        // スクリーンの横縦幅
        let screenWidth:CGFloat = self.view.frame.width
        let screenHeight:CGFloat = self.view.frame.height

        let button = UIButton()
        button.backgroundColor = .red
        button.setTitle("押してくれ", for: .normal)
        button.frame = CGRect(x: screenWidth/4, y: screenHeight/1.5, width: screenWidth/2, height: 50)
        //ボタンを押した時のイベント
        button.addTarget(self, action: #selector(buttonDidTapped(_:)), for: UIControl.Event.touchUpInside)

        self.view.addSubview(button)

        // ラベルのサイズを設定
        resultLabel.frame = CGRect(x:screenWidth/4, y:200,
                             width:screenWidth/2, height:50);
        // ラベルの文字を設定
        resultLabel.text = ""
        // 文字を中央にalignする
        resultLabel.textAlignment = NSTextAlignment.center
        // ラベルのフォントサイズ
        resultLabel.font = UIFont.systemFont(ofSize: 36)

        resultLabel.backgroundColor = .blue
        // Viewにラベルを追加
        self.view.addSubview(resultLabel)

        let xTextField = UITextField()
        xTextField.frame = CGRect(x: screenWidth/1.5, y: screenHeight/2, width: screenWidth/4, height: 50)
        xTextField.backgroundColor = .gray
        xTextField.keyboardType = UIKeyboardType.numberPad
        self.view.addSubview(xTextField)

        let yTextField = UITextField()
        yTextField.frame = CGRect(x: screenWidth/8, y: screenHeight/2, width: screenWidth/4, height: 50)
        yTextField.backgroundColor = .cyan
        yTextField.keyboardType = UIKeyboardType.numberPad
        self.view.addSubview(yTextField)

    }
    
    @objc func buttonDidTapped(_ sender: UIButton) {
        delegate?.plusButtonDidTapped()
            
        }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        self.view.endEditing(true)
    }

}


