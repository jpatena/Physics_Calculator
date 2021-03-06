//
//  Displacement.swift
//  Calculator
//
//  Created by Brandon_Saunders on 6/4/16.
//  Copyright © 2016 Brandon Saunders. All rights reserved.
//

import Foundation
import UIKit

class Displacement: UIViewController {
    
    // Displacement
    // d = v0*t + 1/2 at^2
    @IBOutlet weak var displacement_header: UILabel!
    @IBOutlet weak var initial_velocity_label: UILabel!
    @IBOutlet weak var time_label: UILabel!
    @IBOutlet weak var acceleration_label: UILabel!
    
    @IBOutlet weak var initial_velocity_field: UITextField!
    @IBOutlet weak var time_field: UITextField!
    @IBOutlet weak var acceleration_field: UITextField!
    @IBOutlet weak var displacement_field: UITextField!
    
    @IBOutlet weak var clear_button: UIButton!
    @IBOutlet weak var calculate_button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        initial_velocity_field.keyboardType = .decimalPad
        time_field.keyboardType = .decimalPad
        acceleration_field.keyboardType = .decimalPad
        
        clear_button.layer.cornerRadius = 5
        calculate_button.layer.cornerRadius = 5
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func compute_displacement(_ sender: AnyObject) {
        // d = v0*t + 1/2 at^2
        let initial_velocity = Double(initial_velocity_field.text!)
        let time = Double(time_field.text!)
        let acceleration = Double(acceleration_field.text!)
        _ = UIAlertController(title: "Alert", message: "Please input at least two values", preferredStyle: UIAlertControllerStyle.alert)
        
        var displacement = 0.0
        displacement = (initial_velocity! * time!) + (0.5 * (acceleration! * (time! * time!)))
        displacement_field.text = String(displacement)
    }
    
    @IBAction func clear_results(_ sender: AnyObject) {
        initial_velocity_field.text = ""
        time_field.text = ""
        acceleration_field.text = ""
        displacement_field.text = ""
    }
}
