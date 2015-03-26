//
//  InterfaceController.swift
//  ImageExamplesWatchApp WatchKit Extension
//
//  Created by Rommel Rico on 3/25/15.
//  Copyright (c) 2015 Rommel Rico. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    var animating = true
    //    var imageName = "me.jpg"
    @IBOutlet weak var worldImage: WKInterfaceImage!
    @IBOutlet weak var buttonLabel: WKInterfaceButton!

    @IBAction func changeMe() {
//        if imageName == "me.jpg" {
//            imageName = "ERPT_Logo.png"
//        } else {
//            imageName = "me.jpg"
//        }
//        myImage.setImageNamed(imageName)
        
        //Changing the width of an image programmatically.
//        myImage.setWidth(50)
        if animating == true {
            worldImage.stopAnimating()
            animating = false
            buttonLabel.setTitle("Start Animating")
        } else if animating == false {
            worldImage.startAnimating()
            animating = true
            buttonLabel.setTitle("Stop Animating")
        }
        
    }
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
