//
//  AJAnimationLabel.swift
//  SampleAnimationLabel
//
//  Created by Akila J Wasala on 6/22/18.
//  Copyright © 2018 AkilaWasala. All rights reserved.
//

import UIKit

class AJAnimationLabel: UILabel {

    func startAnimation() {
        let displayLink = CADisplayLink(target: self, selector: #selector(handleUpdate))
        displayLink.add(to: .main, forMode: .defaultRunLoopMode)
    }
    
    func reset() {
        
    }
    
    var startValue: Double = 500
    let endValue: Double = 1000
    let animationDuration: Double = 3.5
    
    let animationStartDate = Date()
    
    @objc func handleUpdate() {
        let now = Date()
        let elapceTime = now.timeIntervalSince(animationStartDate)
        
        if elapceTime > animationDuration {
            text = "\(endValue)"
        } else {
            let percentage = elapceTime/animationDuration
            let value = startValue + percentage * (endValue - startValue)
            text = "\(value)"
        }
    }

}
