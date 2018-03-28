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
    
    var now : Int = 0
    let MessageArray = ["May the force be with you", "Live long and prosper",101,"To infinity and beyond", "Space is big. you just won't believe how vastly, hugely, mindbogglinly big it is and the world is very big and huge wonderful word is worth protect", 10] as [Any]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label1.lineBreakMode = .byWordWrapping
        label1.numberOfLines = 0
        label1.text = "Hello, world!"
        
    }

    @IBAction func changeColor(){
        
        if let temp = MessageArray[now%(MessageArray.count)] as? String{
            self.label1.text = MessageArray[now%(MessageArray.count)] as! String
            now += 1
        }else{
            now += 2
        }
        
    }
    
}

