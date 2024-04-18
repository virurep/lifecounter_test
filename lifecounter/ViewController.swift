//
//  ViewController.swift
//  lifecouner3
//
//  Created by Viru Repalle on 4/17/24.
//

import UIKit

struct Player {
    var name:String
    var lives:Int
}

class ViewController: UIViewController {
    
    var player1 = Player(name: "PLAYER 1", lives: 20)
    var player2 = Player(name: "PLAYER 2", lives: 20)
    @IBOutlet weak var loseText: UILabel!
    
    @IBOutlet weak var player1Label: UILabel!
    
    @IBOutlet weak var player1Lives: UILabel!

    @IBOutlet weak var player2Label: UILabel!
    
    @IBOutlet weak var player2Lives: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Life Counter"
        player1Label.text = "\(player1.name) LIVES"
        player1Lives.text = "\(player1.lives)"
        player2Label.text = "\(player2.name) LIVES"
        player2Lives.text = "\(player2.lives)"
        // Do any additional setup after loading the view.
    }
    
    @IBAction func p1plusOne(_ sender: UIButton) {
           player1.lives += 1
           player1Lives.text = "\(player1.lives)"
        checkGameOver(player: player1)
       }
       
       @IBAction func p1minusOne(_ sender: UIButton) {
           player1.lives -= 1
           player1Lives.text = "\(player1.lives)"
           checkGameOver(player: player1)
       }
       
       @IBAction func p1plusFive(_ sender: UIButton) {
           player1.lives += 5
           player1Lives.text = "\(player1.lives)"
           checkGameOver(player: player1)
       }
       
       @IBAction func p1minusFive(_ sender: UIButton) {
           player1.lives -= 5
           player1Lives.text = "\(player1.lives)"
           checkGameOver(player: player1)
       }
    
    @IBAction func p2plusOne(_ sender: UIButton) {
           player2.lives += 1
           player2Lives.text = "\(player2.lives)"
        checkGameOver(player: player2)
       }
       
       @IBAction func p2minusOne(_ sender: UIButton) {
           player2.lives -= 1
           player2Lives.text = "\(player2.lives)"
           checkGameOver(player: player2)
       }
       
       @IBAction func p2plusFive(_ sender: UIButton) {
           player2.lives += 5
           player2Lives.text = "\(player2.lives)"
           checkGameOver(player: player2)
       }
       
       @IBAction func p2minusFive(_ sender: UIButton) {
           player2.lives -= 5
           player2Lives.text = "\(player2.lives)"
           checkGameOver(player: player2)
       }

        func checkGameOver(player: Player) {
                if player.lives <= 0 {
                    loseText.text = "\(player.name) LOSES!"
                }
            else{
                loseText.text = " "
            }
            }
    
}


