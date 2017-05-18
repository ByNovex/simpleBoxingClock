//
//  CustomShapeLayer.swift
//  simpleClockBoxingV1.1
//
//  Created by Byron Bacusoy Pinela on 18/5/17.
//  Copyright © 2017 Novex. All rights reserved.
//

import UIKit


protocol LayerDesignable {
    
    func createCustomPathForDesing() -> CGPath
    func setupLayer()
    
}

class CustomPauseLayer: CustomShapeLayer, LayerDesignable {
    
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
        
        path = createCustomPathForDesing()
        lineWidth = bounds.width / 10
        strokeColor = ColorStyle.general.color.cgColor
        
    }
    
    func createCustomPathForDesing() -> CGPath {
        
        return CustomPath.twoLines(bounds).cgPath
        
    }
    
}


class CustomStopLayer: CustomShapeLayer, LayerDesignable {
    
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
        
        path = createCustomPathForDesing()
        fillColor = ColorStyle.general.color.cgColor
        
    }
    
    func createCustomPathForDesing() -> CGPath {
        
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





