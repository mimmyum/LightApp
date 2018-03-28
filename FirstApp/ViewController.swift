//
//  ViewController.swift
//  FirstApp
//
//  Created by Release on 2018. 3. 21..
//  Copyright © 2018년 Release. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet var view1: UIView!
    
    var lightOn = true
    var check = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label1.lineBreakMode = .byWordWrapping
        label1.numberOfLines = 0
        label1.text = "Hello, world!"
        
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle{
        if(lightOn && check){
            return .lightContent
        }else{
            check = true
            return .default
        }
    }
    

    @IBAction func changeColor(){
        
        UIUpdate()
        lightOn = !lightOn
    }
    
    func UIUpdate(){
        if(lightOn){
            button1.setTitle("OFF",for: .normal)
            label1.text = "WHITE"
            label1.textColor = UIColor.white
            view1.backgroundColor = UIColor.black
            
        }
        else{
            button1.setTitle("ON",for:.normal)
            label1.text = "BLACK"
            label1.textColor = UIColor.black
            view.backgroundColor = UIColor.white
            
        }
        setNeedsStatusBarAppearanceUpdate()
    }
    
}

