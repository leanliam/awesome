//
//  ViewController.swift
//  Tic Tac Toe
//
//  Created by leanliam on 11/28/14.
//  Copyright (c) 2014 Appfish. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var goNumber = 1

    @IBOutlet weak var button0: UIButton!
    
    @IBAction func buttonPressed(sender: AnyObject) {
        
        var image = UIImage()
        
        if (goNumber%2==0) {
            image = UIImage(named: "O.png")!
        }else{
            image = UIImage(named: "X.png")!
        }
        
        goNumber++
        
        sender.setImage(image, forState: .Normal)
        
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

