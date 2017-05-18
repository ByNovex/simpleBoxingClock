//
//  ButtonDelegate.swift
//  simpleClockBoxingV1.1
//
//  Created by Byron Bacusoy Pinela on 18/5/17.
//  Copyright © 2017 Novex. All rights reserved.
//

import Foundation

enum ButtonType {
    
    case stop
    case pause
    
}


protocol ButtonPressedDelegate {
    
    func buttonPressed(_ button: ButtonType)
    
}
