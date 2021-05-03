//
//  ViewController.swift
//  timer
//
//  Created by hiroto on 2021/05/03.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var timerLabel: UILabel!
  
    var timer = Timer()
    var count = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
  
    @objc func updateTimer() {
        count += 0.1
        timerLabel.text = String(format: "%.1f", count)
    }

    @IBAction func startTimer(_ sender: Any) {
        if !timer.isValid {
            timer = Timer.scheduledTimer(timeInterval: 0.1,
                                         target: self,
                                         selector: #selector(updateTimer),
                                         userInfo: nil,
                                         repeats: true)
        }
    }
    
    @IBAction func stopTimer(_ sender: Any) {
        if timer.isValid {
            timer.invalidate()
        }
    }
    
    @IBAction func resetTimer(_ sender: Any) {
        timer.invalidate()
        count = 0.0
        timerLabel.text = String(format: "%.1f", count)
    }
    
}
