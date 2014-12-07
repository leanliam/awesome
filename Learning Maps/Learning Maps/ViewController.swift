//
//  ViewController.swift
//  Learning Maps
//
//  Created by leanliam on 12/7/14.
//  Copyright (c) 2014 Appfish. All rights reserved.
//

import UIKit
import MapKit


class ViewController: UIViewController, MKMapViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // 40.748570, -73.985299
        
        var latitude:CLLocationDegrees = 40.748570
        
        var longtitude:CLLocationDegrees = -73.985299
        
        var latDelta:CLLocationDegrees = 0.01
        
        var lonDelta:CLLocationDegrees = 0.01
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

