//
//  BrainClock.swift
//  simpleClockBoxingV1.1
//
//  Created by Byron Bacusoy Pinela on 18/5/17.
//  Copyright © 2017 Novex. All rights reserved.
//

import Foundation

/**
 Tells when the time is updated.
 */
protocol ClockDelegate {
    
    func updatedTime()
    
}

/**
 Provides the logical of boxingClock.
 */
class BrainClock {
    
    var time: String {
        
        return getTimeString()
        
    }
    
    var delegate: ClockDelegate?
    
    private var milTime: Int
    private var secTime: Int
    private var minTime: Int
    private var againPause: Bool
    private var isBreak: Bool
    private var timer: Timer!
    
    init() {
        
        milTime = 0
        secTime = 0
        minTime = 0
        isBreak = false
        againPause = false
        
    }
    
    func start() {
        
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(update), userInfo: nil, repeats: true)
        
    }
    
    func stopTime() {
        
        milTime = 0
        secTime = 0
        minTime = 0
        
        delegate?.updatedTime()
        
    }
    
    func pauseTime() {
        
        if againPause {
            
            start()
            againPause = false
            
        } else {
            
            timer.invalidate()
            againPause = true
            
        }
        
    }
    
    
    @objc private func update() {
        
        milTime += 1
        checkTime()
        
        delegate?.updatedTime()
        
    }
    
    private func checkTime() {
        
        checkMilTime()
        checkSecTime()
        checkMinTime()
        
    }
    
    private func checkMilTime() {
        
        if milTime == 10 {
            secTime += 1
            milTime = 0
        }
        
    }
    
    private func checkSecTime() {
        
        if secTime == 60 {
            minTime += 1
            secTime = 0
        }
        
    }
    
    private func checkMinTime() {
        
        if isBreak {
            if minTime == 1 {
                stopTime()
                minTime = 0
                isBreak = false
            }
        } else {
            if minTime == 3 {
                stopTime()
                minTime = 0
                isBreak = true
            }
        }
        
    }
    
    private func getTimeString() -> String {
        
        let mil = "\(milTime)"
        let sec = secTime < 10 ? "0\(secTime)" : "\(secTime)"
        let min = "\(minTime)"
        
        return "\(min):\(sec):\(mil)"
        
    }
    
}
