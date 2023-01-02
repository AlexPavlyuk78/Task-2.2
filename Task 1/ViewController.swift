//
//  ViewController.swift
//  Task 1
//
//  Created by Alexey Efimov on 10.06.2018.
//  Copyright © 2018 Alexey Efimov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var redColor: UIView!
    @IBOutlet var yellowColor: UIView!
    @IBOutlet var blueColor: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    let currentAlpha: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        redColor.alpha = currentAlpha
        yellowColor.alpha = currentAlpha
        blueColor.alpha = currentAlpha
        startButton.layer.cornerRadius = 8
        
        print("Size of sides in method viewDidLoad: \(redColor.frame.height)")
        
    }
    
    override func viewWillLayoutSubviews() {
        
        redColor.layer.cornerRadius = redColor.frame.width / 2
        yellowColor.layer.cornerRadius = redColor.frame.width / 2
        blueColor.layer.cornerRadius = redColor.frame.width / 2
        
        print("Size of sides in method viewDidLoad: \(redColor.frame.height)")
        
    }
    
    @IBAction func buttonClick(_ sender: UIButton) {
        startButton.setTitle("NEXT", for: .normal)
        
        if redColor.alpha == yellowColor.alpha {
            redColor.alpha = CGFloat(MAXFLOAT)
            blueColor.alpha = currentAlpha
        }
        else if redColor.alpha > currentAlpha && yellowColor.alpha == blueColor.alpha {
            yellowColor.alpha = CGFloat(MAXFLOAT)
            redColor.alpha = currentAlpha
        }
        else if yellowColor.alpha > currentAlpha && blueColor.alpha == redColor.alpha {
            blueColor.alpha = CGFloat(MAXFLOAT)
            yellowColor.alpha = currentAlpha
        }
            
    }
}
