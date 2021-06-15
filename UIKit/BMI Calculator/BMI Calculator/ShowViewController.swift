//
//  ViewController.swift
//  BMI Calculator
//
//  Created by 陳耀奇 on 2021/6/15.
//

import UIKit

class ShowViewController: UIViewController {

    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func buttonPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "showEditPage", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showEditPage" {
            if let nextViewController = segue.destination as? EditViewController {
                nextViewController.nameForLabel = String(name.text!)
            }
        }
    }
    
    @IBAction func unwindToThisView(sender: UIStoryboardSegue) {

        if let sourceViewController = sender.source as? EditViewController {
            result.text = "Your bmi is " + String(sourceViewController.bmi)
            button.setTitle("Reset", for: .normal)
        }
    }
}

