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
    func changeColor() -> UIColor{

           let red = CGFloat.random(in: 0...1)
           let green = CGFloat.random(in: 0...1)
           let blue = CGFloat.random(in: 0...1)

           return UIColor(red: red, green: green, blue: blue, alpha: 0.5)
       }
    
    
}

