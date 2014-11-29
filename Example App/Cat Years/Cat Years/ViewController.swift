//
//  ViewController.swift
//  Cat Years
//
//  Created by leanliam on 10/7/14.
//  Copyright (c) 2014 Appfish. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var catAge: UITextField!
    
    @IBOutlet weak var message: UILabel!
   
    @IBAction func buttonPressed(sender: AnyObject) {
        
        var age = catAge.text.toInt()
        
        age = age! * 7
        
        message.text="Your cat is \(age!) years old!"
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

