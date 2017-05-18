//
//  CustomPath.swift
//  simpleClockBoxingV1.1
//
//  Created by Byron Bacusoy Pinela on 18/5/17.
//  Copyright © 2017 Novex. All rights reserved.
//

import Foundation
import UIKit

/**
 Provides *UIBezierPath* made for the buttons of this particular app.
 */
struct CustomPath {
    
    static let twoLines: (CGRect) -> UIBezierPath = { (bounds: CGRect) in
        
        let path = UIBezierPath()
        
        path.move(to: CGPoint(x: 3.5 * bounds.height / 10, y: 3 * bounds.height / 4))
        path.addLine(to: CGPoint(x: 3.5 * bounds.height / 10, y: 3 * bounds.height / 4 - bounds.height / 2))
        
        path.move(to: CGPoint(x: 6.5 * bounds.height / 10, y: 3 * bounds.height / 4))
        path.addLine(to: CGPoint(x: 6.5 * bounds.height / 10, y: 3 * bounds.height / 4 - bounds.height / 2))
        
        return path
        
    }
    
    static let rectangle: (CGRect) -> UIBezierPath = { (bounds: CGRect) in
        
        let path = UIBezierPath(rect: CGRect(x: bounds.height / 4, y: bounds.height / 4, width: bounds.height / 2, height: bounds.height / 2))
        
        return path
        
    }
    
}
