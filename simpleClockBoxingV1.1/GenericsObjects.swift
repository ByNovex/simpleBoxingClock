//
//  GenericsObjects.swift
//  simpleClockBoxingV1.1
//
//  Created by Byron Bacusoy Pinela on 18/5/17.
//  Copyright © 2017 Novex. All rights reserved.
//

import Foundation
import UIKit


/**
 Provides objects made for this particular app.
 */
struct GenericObjects {
    
    static let pauseButton: (UIView) -> PauseButton = { (onView: UIView) in
        
        let side = min(onView.frame.width, onView.frame.height)
        let frame = CGRect(x: 0, y: 0, width: side / 4, height: side / 4)
        
        let button = PauseButton(frame: frame)
        
        let point = CGPoint(x: onView.center.x  - 3 *  button.frame.width / 4, y: 7 * onView.frame.height / 10)
        button.center = point
        
        return button
        
    }
    
    static let stopButton: (UIView) -> StopButton = { (onView: UIView) in
        
        let side = min(onView.frame.width, onView.frame.height)
        let frame = CGRect(x: 0, y: 0, width: side / 4, height: side / 4)
        
        let button = StopButton(frame: frame)
        
        let point = CGPoint(x: onView.center.x  + 3 *  button.frame.width / 4, y: 7 * onView.frame.height / 10)
        button.center = point
        
        return button
        
    }
    
    static let clockLabel: (UIView) -> CustomLabel = { (onView: UIView) in
        
        let frame = CGRect(x: 0, y: 0, width: 9.5 * onView.frame.width / 10, height:  2 * onView.frame.height / 10)
        
        let label = CustomLabel(frame: frame)
        
        let point = CGPoint(x: onView.center.x, y: 4 * onView.frame.height / 10)
        label.center = point
        
        return label
        
    }
    
    static let boxingView: (CGRect) -> BoxingClockView = { (frame) in
        
        let newView = BoxingClockView(frame: frame)
        newView.tag = TagView.main.value
        
        return newView
        
    }
    
}
