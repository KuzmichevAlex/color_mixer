//
//  ViewController.swift
//  color_mixer
//
//  Created by Александр Кузьмичев on 23.10.2020.
//  Copyright © 2020 Александр Кузьмичев. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var mixColorField: UIView!
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    @IBOutlet var redTextField: UITextField!
    @IBOutlet var greenTextField: UITextField!
    @IBOutlet var blueTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mixColorField.layer.cornerRadius = 10
        
        redLabel.text = "Red:\(redSlider.value)"
        greenLabel.text = "Green:\(greenSlider.value)"
        blueLabel.text = "Blue:\(blueSlider.value)"
        
        redSlider.minimumTrackTintColor = .red
        redSlider.maximumTrackTintColor = .white
        redSlider.minimumValue = 0
        redSlider.maximumValue = 255
        
        greenSlider.minimumTrackTintColor = .green
        greenSlider.maximumTrackTintColor = .white
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 255
        
        blueSlider.minimumTrackTintColor = .blue
        blueSlider.maximumTrackTintColor = .white
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 255
    }

    @IBAction func changeRedColor() {
        redLabel.text = "Red:\(Int(redSlider.value))"
        redTextField.text = String("\(Int(redSlider.value))")
    }
    
    @IBAction func changeGreenColor() {
        
    }
    
    @IBAction func changeBlueColor() {
        
    }
}

