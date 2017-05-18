//
//  ColorStyle.swift
//  simpleClockBoxingV1.1
//
//  Created by Byron Bacusoy Pinela on 18/5/17.
//  Copyright © 2017 Novex. All rights reserved.
//

import Foundation
import UIKit

enum ColorStyle {
    
    case background
    case secondBackground
    case text
    case pausePressed
    case stopPressed
    
    var color: UIColor {
        switch self {
        case .background:
            return UIColor(displayP3Red: 0x22/255, green: 0x28/255, blue: 0x31/255, alpha: 1.0)
        case .secondBackground:
            return UIColor(displayP3Red: 0x39/255, green: 0x3E/255, blue: 0x46/255, alpha: 1.0)
        case .text:
            return UIColor(displayP3Red: 0xEE/255, green: 0xEE/255, blue: 0xEE/255, alpha: 1.0)
        case .pausePressed:
            return UIColor(displayP3Red: 0x00/255, green: 0x92/255, blue: 0xCA/255, alpha: 1.0)
        case .stopPressed:
            
            return UIColor(displayP3Red: 0xE8/255, green: 0x45/255, blue: 0x45/255, alpha: 1.0)
        }
    }
}
