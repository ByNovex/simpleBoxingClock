//
//  ViewController.swift
//  simpleClockBoxingV1.1
//
//  Created by Byron Bacusoy Pinela on 17/5/17.
//  Copyright © 2017 Novex. All rights reserved.
//

import UIKit

class ViewController: UIViewController, ClockDelegate, BoxingClockDelegate {
    
    let brainClock = BrainClock()
    
    var boxingClockView: BoxingClockView!
    
    var clockLabel: CustomLabel {
        
        return boxingClockView.getLabel()
        
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        
        return .lightContent
        
    }

    override func viewDidLoad() {
        
        super.viewDidLoad()
        setup()
        
    }
    
    override func viewWillLayoutSubviews() {
        
        redrawView()
        
    }
    
    func updatedTime() {
        
        clockLabel.text = brainClock.time
        
    }
    
    func buttonPauseIsPressed() {
        
        brainClock.pauseTime()
        
    }
    
    func buttonStopIsPressed() {
        
        brainClock.stopTime()
        
    }
    
    private func setup() {
    
        brainClock.start()
        brainClock.delegate = self
        addViewToSuperView()
        
    }
    
    private func addViewToSuperView() {
        
        boxingClockView = GenericObjects.boxingView(view.frame)
        boxingClockView.delegate = self
        view.addSubview(boxingClockView)
        
    }
    
    private func redrawView() {
        
        if let myView = view.viewWithTag(TagView.main.value) {
            
            myView.removeFromSuperview()
            addViewToSuperView()
            
        }
        
    }
    
}

