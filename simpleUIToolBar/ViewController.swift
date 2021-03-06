//
//  ViewController.swift
//  simpleUIToolBar
//
//  Created by koichi tanaka on 3/23/16.
//  Copyright © 2016 koichi tanaka. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIToolbarDelegate{
    
    private var myToolbar: UIToolbar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // set background color
        self.view.backgroundColor = UIColor.blackColor()
        
        // make uitoolbar instance
        myToolbar = UIToolbar(frame: CGRectMake(0, self.view.bounds.size.height - 44, self.view.bounds.size.width, 40.0))
        
        // set the position of the toolbar
        myToolbar.layer.position = CGPoint(x: self.view.bounds.width/2, y: self.view.bounds.height-20.0)
        
        // set the color of the toolbar
        myToolbar.barStyle = .BlackTranslucent
        myToolbar.tintColor = UIColor.whiteColor()
        myToolbar.backgroundColor = UIColor.blackColor()
        
        // make a button
        let myUIBarButtonGreen: UIBarButtonItem = UIBarButtonItem(title: "Green", style:.Plain, target: self, action: "onClickBarButton:")
        myUIBarButtonGreen.tag = 1
        
        let myUIBarButtonBlue: UIBarButtonItem = UIBarButtonItem(title: "Blue", style:.Plain, target: self, action: "onClickBarButton:")
        myUIBarButtonBlue.tag = 2

        let myUIBarButtonRed: UIBarButtonItem = UIBarButtonItem(title: "Red", style:.Plain, target: self, action: "onClickBarButton:")
        myUIBarButtonRed.tag = 3
        
        // add the buttons on the toolbar
        myToolbar.items = [myUIBarButtonGreen, myUIBarButtonBlue, myUIBarButtonRed]

        // add the toolbar to the view.
        self.view.addSubview(myToolbar)
    }
    
    // called when UIBarButtonItem is clicked.
    internal func onClickBarButton(sender: UIBarButtonItem) {
        
        switch sender.tag {
        case 1:
            self.view.backgroundColor = UIColor.greenColor()
        case 2:
            self.view.backgroundColor = UIColor.blueColor()
        case 3:
            self.view.backgroundColor = UIColor.redColor()
        default:
            print("ERROR!!")
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}


