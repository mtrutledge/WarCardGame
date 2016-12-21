//
//  ViewController.swift
//  WarCardGame
//
//  Created by Matt Rutledge on 12/21/16.
//  Copyright © 2016 Believe Kids. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftCardView: UIImageView!
    @IBOutlet weak var rightCardView: UIImageView!
    @IBOutlet weak var playerScoreLabel: UILabel!
    @IBOutlet weak var cpuScoreLabel: UILabel!
    
    func viewInit() {
        updatePlayerScore(score: 0)
        updateCpuScore(score: 0)
    }
    
    func updatePlayerScore(score:Int) {
        playerScoreLabel.text = String(score)
    }

    func updateCpuScore(score:Int) {
        cpuScoreLabel.text = String(score)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        viewInit()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func dealTapped(_ sender: Any) {
        // Randomize numbers from 2 - 10
        let playerNumber = arc4random_uniform(9) + 2
        let cpuNumber = arc4random_uniform(9) + 2

        leftCardView.image = UIImage(named: "card\(playerNumber)")
        rightCardView.image = UIImage(named: "card\(cpuNumber)")
    }
    
}

