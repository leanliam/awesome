//
//  ViewController.swift
//  Example App
//
//  Created by leanliam on 10/5/14.
//  Copyright (c) 2014 Appfish. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    
    @IBAction func buttonPressed(sender: AnyObject) {
        
        
        println("Hello World!")
        
        myLabel.text="It worked!"
        
        
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
   
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

