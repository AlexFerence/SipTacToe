//
//  ViewController.swift
//  TicTacToe
//
//  Created by Alex Ference on 2020-02-23.
//  Copyright © 2020 Alex Ference. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var topLeftButton: UIButton!
    @IBOutlet weak var topMiddleButton: UIButton!
    @IBOutlet weak var topRightButton: UIButton!
    @IBOutlet weak var middleLeftButton: UIButton!
    @IBOutlet weak var middleMiddleButton: UIButton!
    @IBOutlet weak var middleRightButton: UIButton!
    @IBOutlet weak var bottomLeftButton: UIButton!
    @IBOutlet weak var bottomMiddleButton: UIButton!
    @IBOutlet weak var bottomRightButton: UIButton!
    
    var player1 = true
    
    var moveCounter = 0
    var clickable = true
    
    var arrayCounter = [[false, false, false], [false, false, false], [false, false, false]]
    var playerSquareCounter = [[0, 0, 0], [0, 0, 0], [0, 0, 0]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
   
    @IBAction func topLeftPressed(_ sender: UIButton) {
        print("top left")
        
        if (playerSquareCounter[0][0] == 0 && clickable == true) {
            if (player1) {
                sender.setImage(UIImage(named: "X.png"), for: .normal)
                player1 = false
                playerSquareCounter[0][0] = 1
                
            }
            else {
                sender.setImage(UIImage(named: "O.png"), for: .normal)
                player1 = true
                playerSquareCounter[0][0] = 2
            }
            checkWinner()
        }
    }
    @IBAction func topMiddlePressed(_ sender: UIButton) {
        if (playerSquareCounter[0][1] == 0 && clickable == true) {
            if (player1) {
                sender.setImage(UIImage(named: "X.png"), for: .normal)
                player1 = false
                playerSquareCounter[0][1] = 1
                
            }
            else {
                sender.setImage(UIImage(named: "O.png"), for: .normal)
                player1 = true
                playerSquareCounter[0][1] = 2
            }
            checkWinner()
        }
    }
    @IBAction func topRightPressed(_ sender: UIButton) {
        print("topRight")
        if (playerSquareCounter[0][2] == 0 && clickable == true) {
            if (player1) {
                sender.setImage(UIImage(named: "X.png"), for: .normal)
                player1 = false
                playerSquareCounter[0][2] = 1
                
            }
            else {
                sender.setImage(UIImage(named: "O.png"), for: .normal)
                player1 = true
                playerSquareCounter[0][2] = 2
            }
            checkWinner()
        }
    }
   
    @IBAction func middleLeftPressed(_ sender: UIButton) {
        print("middle Left")
        if (playerSquareCounter[1][0] == 0 && clickable == true) {
            if (player1) {
                sender.setImage(UIImage(named: "X.png"), for: .normal)
                player1 = false
                playerSquareCounter[1][0] = 1
                
            }
            else {
                sender.setImage(UIImage(named: "O.png"), for: .normal)
                player1 = true
                playerSquareCounter[1][0] = 2
            }
            checkWinner()
        }
    }
    
    @IBAction func middleMiddlePressed(_ sender: UIButton) {
        print("middle middle")
        if (playerSquareCounter[1][1] == 0 && clickable == true) {
            if (player1) {
                sender.setImage(UIImage(named: "X.png"), for: .normal)
                player1 = false
                playerSquareCounter[1][1] = 1
                
            }
            else {
                sender.setImage(UIImage(named: "O.png"), for: .normal)
                player1 = true
                playerSquareCounter[1][1] = 2
            }
            checkWinner()
        }
    }
    
    @IBAction func middleRightPressed(_ sender: UIButton) {
        print("middle right")
        if (playerSquareCounter[1][2] == 0 && clickable == true) {
            if (player1) {
                sender.setImage(UIImage(named: "X.png"), for: .normal)
                player1 = false
                playerSquareCounter[1][2] = 1
                
            }
            else {
                sender.setImage(UIImage(named: "O.png"), for: .normal)
                player1 = true
                playerSquareCounter[1][2] = 2
            }
            checkWinner()
        }
    }
    
    @IBAction func bottomLeftPressed(_ sender: UIButton) {
        print("bottom left")
        if (playerSquareCounter[2][0] == 0 && clickable == true) {
            if (player1) {
                sender.setImage(UIImage(named: "X.png"), for: .normal)
                player1 = false
                playerSquareCounter[2][0] = 1
                
            }
            else {
                sender.setImage(UIImage(named: "O.png"), for: .normal)
                player1 = true
                playerSquareCounter[2][0] = 2
            }
            checkWinner()
        }
    }
    @IBAction func bottomMiddlePressed(_ sender: UIButton) {
        print("bottom middle")
        if (playerSquareCounter[2][1] == 0 && clickable == true) {
            if (player1) {
                sender.setImage(UIImage(named: "X.png"), for: .normal)
                player1 = false
                playerSquareCounter[2][1] = 1
                
            }
            else {
                sender.setImage(UIImage(named: "O.png"), for: .normal)
                player1 = true
                playerSquareCounter[2][1] = 2
            }
            checkWinner()
        }
    }
    @IBAction func bottomRightPressed(_ sender: UIButton) {
        print("bottom right")
        if (playerSquareCounter[2][2] == 0 && clickable == true) {
            if (player1) {
                sender.setImage(UIImage(named: "X.png"), for: .normal)
                player1 = false
                playerSquareCounter[2][2] = 1
                
            }
            else {
                sender.setImage(UIImage(named: "O.png"), for: .normal)
                player1 = true
                playerSquareCounter[2][2] = 2
            }
            checkWinner()
        }
    }
    
    
    
    func checkWinner() {
        if (playerSquareCounter[0][0] == playerSquareCounter[0][1] && playerSquareCounter[0][1] == playerSquareCounter[0][2] && playerSquareCounter[0][0] != 0) {
            print("someone has won")
            someoneHasWon()
        }
        if (playerSquareCounter[1][0] == playerSquareCounter[1][1] && playerSquareCounter[1][1] == playerSquareCounter[1][2] && playerSquareCounter[1][0] != 0) {
            print("someone has won")
            someoneHasWon()
        }
        if (playerSquareCounter[2][0] == playerSquareCounter[2][1] && playerSquareCounter[2][1] == playerSquareCounter[2][2] && playerSquareCounter[2][0] != 0) {
            print("someone has won")
            someoneHasWon()
        }
        if (playerSquareCounter[0][0] == playerSquareCounter[1][0] && playerSquareCounter[1][0] == playerSquareCounter[2][0] && playerSquareCounter[2][0] != 0) {
            print("someone has won")
            someoneHasWon()
        }
        if (playerSquareCounter[0][1] == playerSquareCounter[1][1] && playerSquareCounter[1][1] == playerSquareCounter[2][1] && playerSquareCounter[2][1] != 0) {
            print("someone has won")
            someoneHasWon()
        }
        if (playerSquareCounter[0][2] == playerSquareCounter[1][2] && playerSquareCounter[1][2] == playerSquareCounter[2][2] && playerSquareCounter[2][2] != 0) {
            print("someone has won")
            someoneHasWon()
        }
        if (playerSquareCounter[0][0] == playerSquareCounter[1][1] && playerSquareCounter[1][1] == playerSquareCounter[2][2] && playerSquareCounter[2][2] != 0) {
            print("someone has won")
            someoneHasWon()
        }
        if (playerSquareCounter[0][2] == playerSquareCounter[1][1] && playerSquareCounter[1][1] == playerSquareCounter[2][0] && playerSquareCounter[2][0] != 0) {
            print("someone has won")
            someoneHasWon()
        }
        
        
    }
    
    func someoneHasWon() {
        clickable = false
        var winner = ""
        if (player1 == true) {
            winner = "Player 2"
        }
        else {
            winner = "Player 1"
        }
        print(winner)
    }

}

