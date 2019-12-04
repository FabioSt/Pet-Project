//
//  FirstViewController.swift
//  Pet Project
//
//  Created by Fabbio on 03/12/2019.
//  Copyright © 2019 Fabbio. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    var seconds = 60
    var timer = Timer()
    var isTimeRunning = false
    
    @IBAction func timerBtn(_ sender: Any) {
        if (isTimeRunning == false) {
        runTimer()
        isTimeRunning = true
        }
    }
    
    @IBOutlet weak var timerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timerLabel.backgroundColor = UIColor.clear
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        setGradientBackground()
        super.viewWillAppear(animated)
    }

    func runTimer() {
         timer = Timer.scheduledTimer(timeInterval: 1, target: self,   selector: (#selector(FirstViewController.updateTimer)), userInfo: nil, repeats: true)
    }
    
    @objc func updateTimer() {
        if seconds >= 1 {
        seconds -= 1
        timerLabel.text = timeString(time: TimeInterval(seconds))
        } else if (seconds == 0) {
            timer.invalidate()
            isTimeRunning = false
            seconds = 60
        }
    }
    
    func timeString(time:TimeInterval) -> String {
    let hours = Int(time) / 3600
    let minutes = Int(time) / 60 % 60
    let seconds = Int(time) % 60
        return String(format:"%02i:%02i:%02i", hours, minutes, seconds)
    }
    
   func setGradientBackground() {
    let colorTop =  UIColor(red:0.51, green:0.64, blue:0.83, alpha:1.0)
.cgColor
    let colorBottom = UIColor(red:0.71, green:0.98, blue:1.00, alpha:1.0).cgColor

        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [colorTop, colorBottom]
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.frame = self.view.bounds

        self.view.layer.insertSublayer(gradientLayer, at:0)
    }
    
}

