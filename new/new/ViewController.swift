//
//  ViewController.swift
//  new
//
//  Created by hiroto on 2021/03/27.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let num = 3
        if num == 1 { //true 正しい
            label.text = "Hello Ruby"
        }
        
        
        
    }

    @IBAction func tapButton(_ sender: Any) {
        
        label.text = "Hello Python"
    }
    
}

