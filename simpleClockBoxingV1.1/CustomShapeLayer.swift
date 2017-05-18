//
//  CustomShapeLayer.swift
//  simpleClockBoxingV1.1
//
//  Created by Byron Bacusoy Pinela on 18/5/17.
//  Copyright © 2017 Novex. All rights reserved.
//

import UIKit


protocol CustomDesignable {
    
    func setupLayer()
    func createCustomPath() -> CGPath
    
}

class CustomPauseLayer: CustomShapeLayer, CustomDesignable {
    
    override init(bounds: CGRect) {
        
        super.init(bounds: bounds)
        setupLayer()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        
        super.init(coder: aDecoder)
        
    }
    
    override init(layer: Any) {
        
        super.init(layer: layer)
        
    }
    
    func setupLayer() {
        
        path = createCustomPath()
        lineWidth = bounds.width / 10
        strokeColor = ColorStyle.text.color.cgColor
        
    }
    
    func createCustomPath() -> CGPath {
        
        return CustomPath.twoLines(bounds).cgPath
        
    }
    
}


class CustomStopLayer: CustomShapeLayer, CustomDesignable {
    
    override init(bounds: CGRect) {
        
        super.init(bounds: bounds)
        setupLayer()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        
        super.init(coder: aDecoder)
        
    }
    
    override init(layer: Any) {
        
        super.init(layer: layer)
        
    }
    
    
    func setupLayer() {
        
        path = createCustomPath()
        fillColor = ColorStyle.text.color.cgColor
        
    }
    
    func createCustomPath() -> CGPath {
        
        return CustomPath.rectangle(bounds).cgPath
        
    }
    
}


class CustomShapeLayer: CAShapeLayer {
    
    init(bounds: CGRect) {
        
        super.init()
        self.frame = bounds
        self.bounds = bounds
        
    }
    
    override init(layer: Any) {
        
        super.init(layer: layer)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        
        super.init(coder: aDecoder)
        
    }

}





