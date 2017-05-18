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



class BoxingClockView: UIView {

    var buttonPause: PauseButton!
    var buttonStop: StopButton!
    var clockLabel: CustomLabel!
    
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        setupView()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        
        super.init(coder: aDecoder)
        
    }
    
    func setupView() {
        
        backgroundColor = ColorStyle.background.color
        setupObjects()
        
    }
    
    func setupObjects() {
        
        buttonPause = GenericObjects.pauseButton(self)
        buttonStop = GenericObjects.stopButton(self)
        clockLabel = GenericObjects.clockLabel(self)
        addToSuperView()
        
    }
    
    func addToSuperView() {
        
        addSubview(buttonPause)
        addSubview(buttonStop)
        addSubview(clockLabel)
        
    }

}
