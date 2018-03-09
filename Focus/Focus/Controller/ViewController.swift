//
//  ViewController.swift
//  Focus
//
//  Created by Ikjot Kaur on 3/8/18.
//  Copyright © 2018 Ikjot Kaur. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var noOfOpenCards : Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func cardClicked(_ sender: UIButton) {
        noOfOpenCards += 1
        overturn(withEmoji: "😇", on: sender)
        overturn(withEmoji: "🎃", on: sender)
    }
    
    func overturn(withEmoji emoji:String, on button:UIButton){
        if emoji == button.currentTitle {
            button.setTitle("", for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 0, blue: 0, alpha: 1)
        } else {
            button.setTitle(emoji, for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
    
}

