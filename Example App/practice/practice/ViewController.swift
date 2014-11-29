//
//  ViewController.swift
//  practice
//
//  Created by leanliam on 10/21/14.
//  Copyright (c) 2014 Appfish. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var myMessage: UILabel!
    
    
    @IBAction func buttonPressed(sender: AnyObject) {
        
        println("test")
        
        myMessage.text="It worked!"
        
    }
   

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

