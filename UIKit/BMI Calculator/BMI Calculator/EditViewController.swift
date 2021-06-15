//
//  EditViewController.swift
//  BMI Calculator
//
//  Created by 陳耀奇 on 2021/6/15.
//

import UIKit

class EditViewController: UIViewController {

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var widthTextField: UITextField!
    @IBOutlet weak var heightTextField: UITextField!
    var nameForLabel = ""
    var bmi = 0.0

    override func viewDidLoad() {
        super.viewDidLoad()
        name.text = nameForLabel
    }
    

    @IBAction func confirm(_ sender: Any) {
        let h :Double = Double(heightTextField.text!)!
        let w :Double = Double(widthTextField.text!)!
        bmi = w/(h*h)
    }

}
