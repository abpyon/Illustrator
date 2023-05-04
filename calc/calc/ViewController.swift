//
//  ViewController.swift
//  calc
//
//  Created by HirotoUeda on 2023/05/05.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var firstTextField: UITextField!
    @IBOutlet weak var secondTextField: UITextField!
    
    @IBAction func addition(_ sender: Any) {
        guard let first = Int(firstTextField.text ?? "")  else { return }
        guard let second = Int(secondTextField.text ?? "") else { return }

        resultLabel.text = String(first + second)
    }
    
    @IBAction func subtraction(_ sender: Any) {
        guard let first = Int(firstTextField.text ?? "")  else { return }
        guard let second = Int(secondTextField.text ?? "") else { return }

        resultLabel.text = String(first - second)
    }

    @IBAction func multiplication(_ sender: Any) {
        guard let first = Int(firstTextField.text ?? "")  else { return }
        guard let second = Int(secondTextField.text ?? "") else { return }

        resultLabel.text = String(first * second)
    }

    @IBAction func division(_ sender: Any) {
        guard let first = Int(firstTextField.text ?? "")  else { return }
        guard let second = Int(secondTextField.text ?? "") else { return }

        resultLabel.text = String(first / second)
    }

}

