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
    @IBOutlet weak var playerScoreLabel: UILabel!
    @IBOutlet weak var rightCardView: UIImageView!
    @IBOutlet weak var cpuScoreLabel: UILabel!
    
    var playerScore: Int = 0
    var cpuScore: Int = 0
    
    let cardNames = ["card2", "card3", "card4", "card5", "card6", "card7", "card8", "card9", "card10", "jack", "queen", "king", "ace"]
    
    func viewInit() {
        playerScore = 0
        cpuScore = 0
        updatePlayerScore(score: playerScore)
        updateCpuScore(score: cpuScore)
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
        let playerNumber = Int(arc4random_uniform(13))
        let cpuNumber = Int(arc4random_uniform(13))
        
        if(playerNumber < cpuNumber) { // Cpu wins
            cpuScore += 1
        }
        else if(playerNumber > cpuNumber) { // Player Wins
            playerScore += 1
        }
        
        leftCardView.image = UIImage(named: cardNames[playerNumber])
        rightCardView.image = UIImage(named: cardNames[cpuNumber])
        
        updatePlayerScore(score: playerScore)
        updateCpuScore(score: cpuScore)
    }
    
}

