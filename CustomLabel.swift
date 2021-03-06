//
//  CustomLabel.swift
//  simpleClockBoxingV1.1
//
//  Created by Byron Bacusoy Pinela on 18/5/17.
//  Copyright © 2017 Novex. All rights reserved.
//

import UIKit


class CustomLabel: UILabel {
    
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        setupLabel()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        
        super.init(coder: aDecoder)
        
    }
    
    func setupLabel() {
        
        backgroundColor = ColorStyle.secondBackground.color
        textColor = ColorStyle.general.color
        textAlignment = .center
        font = UIFont.systemFont(ofSize: 80)
        layer.cornerRadius = 5
        clipsToBounds = true
        
    }
    
}
