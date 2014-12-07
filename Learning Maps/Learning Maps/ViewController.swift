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
    
    
    @IBOutlet weak var myMap: MKMapView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // 40.748570, -73.985299
        
        var latitude:CLLocationDegrees = 40.748570
        
        var longtitude:CLLocationDegrees = -73.985299
        
        var latDelta:CLLocationDegrees = 0.01
        
        var lonDelta:CLLocationDegrees = 0.01
        
        var span:MKCoordinateSpan = MKCoordinateSpanMake(latDelta, lonDelta)
        
        var location:CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longtitude)
        
        var region:MKCoordinateRegion = MKCoordinateRegionMake(location, span)
        
        myMap.setRegion(region, animated: true)
        
        var annotation = MKPointAnnotation()
        
        annotation.coordinate = location
        
        annotation.title = "Statue of Liberty"
        
        annotation.subtitle = "One day I'll go here"
        
        myMap.addAnnotation(annotation)
        
        var uilpgr = UILongPressGestureRecognizer(target: self, action: "action:")
        
        uilpgr.minimumPressDuration = 1.0
        
        myMap.addGestureRecognizer(uilpgr)
    }

    func action(gestureRecognizer:UIGestureRecognizer) {
        
        println("test")
        
        var touchPoint = gestureRecognizer.locationInView(self.myMap)
        
        var newCoordinate:CLLocationCoordinate2D = myMap.convertPoint(touchPoint, toCoordinateFromView: self.myMap)
        
        var newAnnotation = MKPointAnnotation()
        
        newAnnotation.coordinate = newCoordinate
        
        newAnnotation.title = "New point"
        
        newAnnotation.subtitle = "One day I'll go here"
        
        myMap.addAnnotation(newAnnotation)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

