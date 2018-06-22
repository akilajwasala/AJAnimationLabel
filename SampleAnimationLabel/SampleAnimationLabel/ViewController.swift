//
//  ViewController.swift
//  SampleAnimationLabel
//
//  Created by Akila J Wasala on 6/22/18.
//  Copyright © 2018 AkilaWasala. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let countingLabel: UILabel = {
        let label = UILabel()
        label.text = "12345"
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 14)
        return label
    } ()

    @IBOutlet var animationLabel: AJAnimationLabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func assda(_ sender: UIButton) {
        animationLabel.startAnimation()
    }
}

