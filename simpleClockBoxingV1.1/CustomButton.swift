//
//  CustomButton.swift
//  simpleClockBoxingV1.1
//
//  Created by Byron Bacusoy Pinela on 18/5/17.
//  Copyright © 2017 Novex. All rights reserved.
//

import UIKit


enum ButtonType {
    
    case stop
    case pause
    
}

/**
 Tells when the button is pressed.
 */
protocol ButtonDelegate {
    
    func buttonPressed(_ button: ButtonType)
    
}

protocol ButtonLayable {
    
    func createLayer()
    func addLayerToSuperLayer()
    
}

class PauseButton: CustomButton, ButtonLayable {
    
    private var pauseLayer: CustomPauseLayer!
    
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        createLayer()
        addLayerToSuperLayer()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        
        super.init(coder: aDecoder)
        
    }
    
    func createLayer() {
        
        pauseLayer = CustomPauseLayer(bounds: bounds)
        
    }
    
    func addLayerToSuperLayer() {
        
        layer.addSublayer(pauseLayer)
        
    }
    
    override func changeColorWhenStopTouch() {
        
        pauseLayer.strokeColor = ColorStyle.general.color.cgColor
        
    }
    
    override func changeColorWhenBeginTouch() {
        
        pauseLayer.strokeColor = ColorStyle.pausePressed.color.cgColor
        
    }
    
    override func buttonIsPressed() {
        
        delegate?.buttonPressed(.pause)
        
    }
 
}

class StopButton: CustomButton, ButtonLayable {
    
    private var stopLayer: CustomStopLayer!
    
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        createLayer()
        addLayerToSuperLayer()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        
        super.init(coder: aDecoder)
        
    }
    
    func createLayer() {
        
        stopLayer = CustomStopLayer(bounds: bounds)
        
    }
    
    func addLayerToSuperLayer() {
        
        layer.addSublayer(stopLayer)
        
    }
    
    override func changeColorWhenStopTouch() {
        
        stopLayer.fillColor = ColorStyle.general.color.cgColor
        
    }
    
    override func changeColorWhenBeginTouch() {
        
        stopLayer.fillColor = ColorStyle.stopPressed.color.cgColor
        
    }
    
    override func buttonIsPressed() {
        
        delegate?.buttonPressed(.stop)
        
    }
    
}

class CustomButton: UIButton {
    
    var delegate: ButtonDelegate?
    
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        setupButton()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        
        super.init(coder: aDecoder)
        
    }
    
    private func setupButton() {
        
        backgroundColor = ColorStyle.secondBackground.color
        layer.cornerRadius = frame.width / 2
        clipsToBounds = true
        addTargetsToButton()
        
    }
    
    private func addTargetsToButton() {
        
        addTarget(self, action: #selector(changeColorWhenStopTouch), for: UIControlEvents.touchUpInside)
        addTarget(self, action: #selector(changeColorWhenBeginTouch), for: UIControlEvents.touchDown)
        addTarget(self, action: #selector(buttonIsPressed), for: UIControlEvents.touchUpInside)
        
    }
    
    @objc func changeColorWhenStopTouch() { }
    
    @objc func changeColorWhenBeginTouch() { }
    
    @objc func buttonIsPressed() { }
    
}






