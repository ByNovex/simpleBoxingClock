//
//  BoxingClockView.swift
//  simpleClockBoxingV1.1
//
//  Created by Byron Bacusoy Pinela on 17/5/17.
//  Copyright © 2017 Novex. All rights reserved.
//

import UIKit


enum TagView {
    
    case main
    
    var value: Int {
        switch self {
        case .main:
            return 0x01
        }
    }
}

/**
 Tells if some button is pressed.
 */
protocol BoxingClockDelegate {
    
    func buttonPauseIsPressed()
    func buttonStopIsPressed()
    
}


class BoxingClockView: UIView, ButtonDelegate {
    
    var delegate: BoxingClockDelegate?

    private var buttonPause: PauseButton!
    private var buttonStop: StopButton!
    private var clockLabel: CustomLabel!
    
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        setupView()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        
        super.init(coder: aDecoder)
        
    }
    
    
    func getLabel() -> CustomLabel {
        
        return clockLabel
        
    }
    
    func buttonPressed(_ button: ButtonType) {
        
        switch button {
            
        case .stop:
            delegate?.buttonStopIsPressed()
        case .pause:
            delegate?.buttonPauseIsPressed()
            
        }
        
    }
    
    private func setupView() {
        
        backgroundColor = ColorStyle.background.color
        setupObjects()
        
    }
    
    private func setupObjects() {
        
        createObjects()
        setupButtonDelegates()
        addToSuperView()
        
    }
    
    private func createObjects() {
       
        buttonPause = GenericObjects.pauseButton(self)
        buttonStop = GenericObjects.stopButton(self)
        clockLabel = GenericObjects.clockLabel(self)
        
    }
    
    private func setupButtonDelegates() {
        
        buttonPause.delegate = self
        buttonStop.delegate = self
        
    }
    
    private func addToSuperView() {
        
        addSubview(buttonPause)
        addSubview(buttonStop)
        addSubview(clockLabel)
        
    }

}
