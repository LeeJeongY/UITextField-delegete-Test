//
//  ViewController.swift
//  UITextField delegete Test
//
//  Created by D7703_23 on 2018. 3. 22..
//  Copyright © 2018년 D7703_23. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // UiTextFieldDelegate 객체와 viewController 객체와 연결
        
        textfield.placeholder = "입력을 하세요"
        textfield.clearButtonMode = UITextFieldViewMode.whileEditing
        textfield.borderStyle = UITextBorderStyle.line
        textfield.delegate = self
    }

    @IBOutlet weak var hellolabel: UILabel!
    
    @IBOutlet weak var textfield: UITextField!
    
    
    @IBAction func Button(_ sender: Any) {
        hellolabel.text = "Hello " + textfield.text!
        textfield.text=""
        
        textfield.resignFirstResponder() //키패드를 내림
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
}
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        textfield.resignFirstResponder()
    }


// UITextFieldDelegate 메소드 호출
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        view.backgroundColor = UIColor.yellow
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        view.backgroundColor = UIColor.green
        textField.resignFirstResponder()
        return true
    }
}
