//
//  ViewController.swift
//  ViewCardGame
//
//  Created by Hanna Tischer on 5/20/20.
//  Copyright © 2020 Hanna Tischer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    var rightScore = 0
    var leftScore = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    
    @IBAction func dealTap(_ sender: Any) {
        let left = Int.random(in: 2...14)
        let right = Int.random(in: 2...14)
        leftImageView.image = UIImage(named: "card\(left)")
        rightImageView.image = UIImage(named: "card\(right)")
        
        
        if left > right {
            leftScore = leftScore + 1
            leftScoreLabel.text = String(leftScore)
        } else if left < right {
            rightScore = rightScore + 1
            rightScoreLabel.text = String(rightScore)
        } 
    }
    
    
    


}

