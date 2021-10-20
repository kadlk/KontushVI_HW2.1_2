//
//  ViewController.swift
//  KontushVI_HW2.1_2
//
//  Created by Vadim Kontush on 19.10.21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var RedSquare: UIView!
    @IBOutlet var YellowSquare: UIView!
    @IBOutlet var GreenSquare: UIView!
    @IBOutlet var ChangeColorButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        RedSquare.alpha = 0.3
        YellowSquare.alpha = 0.3
        GreenSquare.alpha = 0.3
        
        RedSquare.layer.cornerRadius = 75
        YellowSquare.layer.cornerRadius = 75
        GreenSquare.layer.cornerRadius = 75
    }

    var isRed = false
    var isYellow = false
    var isGreen = false
    
    @IBAction func ChangeColorButtonPressed() {
        ChangeColorButton.setTitle("NEXT", for: .normal)
        
        
        
        if !isRed && !isYellow && !isGreen{
            RedSquare.alpha = 1
            isRed = true
            return
        }
        
        if isRed{
            RedSquare.alpha = 0.3
            YellowSquare.alpha = 1
            GreenSquare.alpha = 0.3
            
            isRed = false
            isYellow = true
            return
        }
        
        if isYellow{
            RedSquare.alpha = 0.3
            YellowSquare.alpha = 0.3
            GreenSquare.alpha = 1
            
            isGreen = true
            isYellow = false
            return
        }
        
        if isGreen{
            RedSquare.alpha = 1
            YellowSquare.alpha = 0.3
            GreenSquare.alpha = 0.3
            
            isRed = true
            isGreen = false
            return
        }
        
    }
    
}

