//
//  BrainClock.swift
//  simpleClockBoxingV1.1
//
//  Created by Byron Bacusoy Pinela on 18/5/17.
//  Copyright © 2017 Novex. All rights reserved.
//

import Foundation


protocol ClockDelegate {
    
    func updatedTime()
    
}

class BrainClock {
    
    var time: String {
        
        return getTimeString()
        
    }
    
    var delegate: ClockDelegate?
    
    private var milTime: Int
    private var secTime: Int
    private var minTime: Int
    private var again: Bool
    private var timer: Timer!
    
    init() {
        
        milTime = 0
        secTime = 0
        minTime = 0
        again = false
        
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
        
        if again {
            
            start()
            again = false
            
        } else {
            
            timer.invalidate()
            again = true
            
        }
        
    }
    
    
    @objc private func update() {
        
        milTime += 1
        checkTime()
        
        delegate?.updatedTime()
        
    }
    
    private func checkTime() {
        
        if milTime == 10 {
            secTime += 1
            milTime = 0
        }
        
        if secTime == 60 {
            minTime += 1
            secTime = 0
        }
        
        if minTime == 3 {
            restartTime()
        }
        
    }
    
    private func restartTime() {
        
        
    }
    
    private func getTimeString() -> String {
        
        let mil = "\(milTime)"
        let sec = secTime < 10 ? "0\(secTime)" : "\(secTime)"
        let min = "\(minTime)"
        
        return "\(min):\(sec):\(mil)"
        
    }
    
}
