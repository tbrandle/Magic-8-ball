//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Tim Brandle on 6/11/19.
//  Copyright © 2019 Tim Brandle. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let ballImageArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    var randomIndex : Int = 0
    
    @IBOutlet weak var magicBall: UIImageView!
    
    @IBAction func askButtonPressed(_ sender: Any) {
        udpateBallMessage()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        udpateBallMessage()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        udpateBallMessage()
    }

    func udpateBallMessage () {
        
        randomIndex = Int.random(in: 0 ... 4)
        magicBall.image = UIImage(named: ballImageArray[randomIndex])
    }
}

