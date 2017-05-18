//
//  ViewController.swift
//  simpleClockBoxingV1.1
//
//  Created by Byron Bacusoy Pinela on 17/5/17.
//  Copyright © 2017 Novex. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var boxingClockView: BoxingClockView! {
        return createBoxingView()
    }

    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.view.addSubview(boxingClockView)
        
    }
    
    override func viewWillLayoutSubviews() {
        
        redrawView()
        
    }
    
    func createBoxingView() -> BoxingClockView {
        
        let newView = BoxingClockView(frame: self.view.frame)
        newView.tag = TagView.main.value
        
        return newView
        
    }
    
    func redrawView() {
        
        if let view = self.view.viewWithTag(TagView.main.value) {
            view.removeFromSuperview()
            self.view.addSubview(boxingClockView)
            
        }
        
    }

}

