//
//  ViewController.swift
//  CodePathPreWork
//
//  Created by Hassan Alkhafaji on 4/17/25.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        textBackground.layer.cornerRadius = 12
        textBackground2.layer.cornerRadius = 12
        
    }
  
    
    @IBAction func opacitySlider(_ sender: UISlider) {
        mainBackground.alpha = CGFloat(sender.value)
    }
    
    
    @IBOutlet weak var textBackground2: UIView!
    @IBOutlet var mainBackground: UIView!
    
    @IBOutlet weak var textBackground: UIView!
    
    
    @IBAction func changeBackgroundColor(_ sender: UIButton) {
        let randomColor = changeColor()
        UIView.animate(withDuration: 0.5) {
            self.view.backgroundColor = randomColor
        }
    }
    
    @IBOutlet weak var nameLabel: UILabel!
  
    @IBOutlet weak var textButtonLabel: UIButton!
    @IBOutlet weak var collegeLabel: UILabel!
    
    @IBOutlet weak var backgroundButtonLabel: UIButton!
    @IBOutlet weak var brightnessLabel: UILabel!
    @IBOutlet weak var jobLabel: UILabel!
    @IBAction func ChangeTextColor(_ sender: UIButton) {
        let randomColor = changeColor()
        UIView.animate(withDuration: 0.5) {
            self.jobLabel.textColor = randomColor
            self.brightnessLabel.textColor = randomColor
            self.collegeLabel.textColor = randomColor
            self.backgroundButtonLabel.setTitleColor(randomColor, for: .normal)
            self.nameLabel.textColor = randomColor
            
            
        }
    }
    
    func changeColor() -> UIColor{

           let red = CGFloat.random(in: 0...1)
           let green = CGFloat.random(in: 0...1)
           let blue = CGFloat.random(in: 0...1)

           return UIColor(red: red, green: green, blue: blue, alpha: 0.5)
       }
    
    
}

