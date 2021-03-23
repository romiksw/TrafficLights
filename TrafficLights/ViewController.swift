//
//  ViewController.swift
//  TrafficLights
//
//  Created by Roman Kozlov on 23.03.2021.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var redLight: UIView!
    @IBOutlet weak var yellowLight: UIView!
    @IBOutlet weak var greenLight: UIView!
    
    @IBOutlet weak var lightChangeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLight.layer.cornerRadius = redLight.frame.width / 2
        yellowLight.layer.cornerRadius = yellowLight.frame.width / 2
        greenLight.layer.cornerRadius = greenLight.frame.width / 2
        
        redLight.alpha = 0.3
        yellowLight.alpha = 0.3
        greenLight.alpha = 0.3
        
        lightChangeButton.layer.cornerRadius = 5
        lightChangeButton.setTitle("Start", for: .normal)
    }
    
    @IBAction func lightChangeButtonPress() {
        lightChangeButton.setTitle("Next", for: .normal)

        if redLight.alpha == 0.3 && yellowLight.alpha == 0.3 &&
            greenLight.alpha == 0.3 {
            redLight.alpha = 1
        }

        if redLight.alpha == 1 {
            redLight.alpha = 0.3
            yellowLight.alpha = 1
        } else if yellowLight.alpha == 1 {
            yellowLight.alpha = 0.3
            greenLight.alpha = 1
        } else {
            greenLight.alpha = 0.3
            redLight.alpha = 1
        }
    }
}

