//
//  ViewController.swift
//  LightsApp
//
//  Created by Сергей Иванов on 01.03.2022.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    @IBOutlet var controlButton: UIButton!
//    var currentLight = 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLightView.layer.cornerRadius = 77
        redLightView.alpha = 0.3
        
        yellowLightView.layer.cornerRadius = 77
        yellowLightView.alpha = 0.3
        
        greenLightView.layer.cornerRadius = 77
        greenLightView.alpha = 0.3
        
        controlButton.layer.cornerRadius = 15
        
        
        // Do any additional setup after loading the view.
    }

    @IBAction func controlButtonPressed() {
//        controlButton.setTitle("NEXT", for: .normal)
       
        
        if redLightView.alpha != 1,yellowLightView.alpha != 1 {
            redLightView.alpha = 1
            yellowLightView.alpha = 0.3
            greenLightView.alpha = 0.3
        } else if yellowLightView.alpha != 1, redLightView.alpha == 1 {
            yellowLightView.alpha = 1
            redLightView.alpha = 0.3
            greenLightView.alpha = 0.3
        } else if greenLightView.alpha != 1{
            greenLightView.alpha = 1
            yellowLightView.alpha = 0.3
            redLightView.alpha = 0.3
        }
        controlButton.setTitle("NEXT", for: .normal)

    }
    
    
}

