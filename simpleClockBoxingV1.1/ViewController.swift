//
//  ViewController.swift
//  simpleClockBoxingV1.1
//
//  Created by Byron Bacusoy Pinela on 17/5/17.
//  Copyright © 2017 Novex. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var boxingClockView: BoxingClockView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        boxingClockView = BoxingClockView(frame: self.view.frame)
        self.view.addSubview(boxingClockView)
        
    }



}

