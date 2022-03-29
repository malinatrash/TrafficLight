//
//  ViewController.swift
//  TrafficLight
//
//  Created by Pavel Naumov on 24.03.2022.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var redLightView: UIView!
    @IBOutlet weak var yellowLightView: UIView!
    @IBOutlet weak var greenLightView: UIView!
    
    @IBOutlet weak var startButton: UIButton!
    
    private var allLightsDisable = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLightView.alpha = 0.3
        yellowLightView.alpha = 0.3
        greenLightView.alpha = 0.3
        
        startButton.layer.cornerRadius = 25
        
        redLightView.layer.cornerRadius = redLightView.frame.height / 2
        yellowLightView.layer.cornerRadius = yellowLightView.frame.height / 2
        greenLightView.layer.cornerRadius = greenLightView.frame.height / 2
    }


    @IBAction func changeLight() {
        
        if allLightsDisable || greenLightView.alpha == 1{
            greenLightView.alpha = 0.3
            redLightView.alpha = 1
            startButton.setTitle("NEXT", for: .normal)
            allLightsDisable = false
            return
        }
        
        if redLightView.alpha == 1 {
            redLightView.alpha = 0.3
            yellowLightView.alpha = 1
            return
        }
        
        if yellowLightView.alpha == 1 {
            yellowLightView.alpha = 0.3
            greenLightView.alpha = 1
            return
        }
    }
}

