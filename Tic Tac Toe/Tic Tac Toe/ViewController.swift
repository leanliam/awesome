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
    
    var winner = 0
    
    // 0 = empty, 1 = O, 2 = X
    
    var gameState = [0, 0, 0, 0, 0, 0, 0, 0, 0]
    
    let winningCombinations = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [2,4,6]]

    @IBOutlet weak var button0: UIButton!
    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func buttonPressed(sender: AnyObject) {
        
        if gameState[sender.tag]==0 {
        
        var image = UIImage()
        
        if (goNumber%2==0) {
            image = UIImage(named: "X.png")!
            
            gameState[sender.tag] = 2
            
        }else{
            image = UIImage(named: "O.png")!
            
            gameState[sender.tag] = 1
        }
            
            for combination in winningCombinations {
                
                if (gameState[combination[0]]==gameState[combination[1]] && gameState[combination[1]]==gameState[combination[2]] && gameState[combination[0]] != 0) {
                    
                    winner = gameState[combination[0]]
                }
            }
            
            if (winner != 0) {
                
                if (winner == 1) {
                    
                    label.text = "O has won!"
                    
                    label.hidden = false
                    
                } else {
                    
                    label.text = "X has won!"
                    
                    label.hidden = false
                }
                
                UIView.animateWithDuration(1, animations: {
                    
                    self.label.center = CGPointMake(self.label.center.x + 400, self.label.center.y)
                })
            }
        
        goNumber++
        
        sender.setImage(image, forState: .Normal)
            
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        label.hidden = true
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewDidAppear(animated: Bool) {
        label.center = CGPointMake(label.center.x - 400, label.center.y)
    
    }


}

