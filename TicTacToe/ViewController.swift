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
    @IBOutlet weak var bottomHeadline: UILabel!
    
    var player1 = true
    
    var moveCounter = 0
    var clickable = true
    var gameOver = false
    
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
        
        if (player1) {
            bottomHeadline.text = "Player 1's Turn"
        }
        else {
            bottomHeadline.text = "Player 2's Turn"
        }
        
        moveCounter = moveCounter + 1
        
        if (moveCounter > 8) {
            bottomHeadline.text = "Tie game!"
            //gameOver = true
            
        }
        
        if (playerSquareCounter[0][0] == playerSquareCounter[0][1] && playerSquareCounter[0][1] == playerSquareCounter[0][2] && playerSquareCounter[0][0] != 0) {
            print("someone has won")
            topLeftButton.backgroundColor = UIColor.green
            topMiddleButton.backgroundColor = UIColor.green
            topRightButton.backgroundColor = UIColor.green
            someoneHasWon()
        }
        if (playerSquareCounter[1][0] == playerSquareCounter[1][1] && playerSquareCounter[1][1] == playerSquareCounter[1][2] && playerSquareCounter[1][0] != 0) {
            print("someone has won")
            middleLeftButton.backgroundColor = UIColor.green
            middleMiddleButton.backgroundColor = UIColor.green
            middleRightButton.backgroundColor = UIColor.green
            someoneHasWon()
        }
        if (playerSquareCounter[2][0] == playerSquareCounter[2][1] && playerSquareCounter[2][1] == playerSquareCounter[2][2] && playerSquareCounter[2][0] != 0) {
            print("someone has won")
            bottomLeftButton.backgroundColor = UIColor.green
            bottomMiddleButton.backgroundColor = UIColor.green
            bottomRightButton.backgroundColor = UIColor.green
            someoneHasWon()
        }
        if (playerSquareCounter[0][0] == playerSquareCounter[1][0] && playerSquareCounter[1][0] == playerSquareCounter[2][0] && playerSquareCounter[2][0] != 0) {
            print("someone has won")
            topLeftButton.backgroundColor = UIColor.green
            middleLeftButton.backgroundColor = UIColor.green
            bottomLeftButton.backgroundColor = UIColor.green
            someoneHasWon()
        }
        if (playerSquareCounter[0][1] == playerSquareCounter[1][1] && playerSquareCounter[1][1] == playerSquareCounter[2][1] && playerSquareCounter[2][1] != 0) {
            print("someone has won")
            topMiddleButton.backgroundColor = UIColor.green
            middleMiddleButton.backgroundColor = UIColor.green
            bottomMiddleButton.backgroundColor = UIColor.green
            someoneHasWon()
        }
        if (playerSquareCounter[0][2] == playerSquareCounter[1][2] && playerSquareCounter[1][2] == playerSquareCounter[2][2] && playerSquareCounter[2][2] != 0) {
            print("someone has won")
            topRightButton.backgroundColor = UIColor.green
            middleRightButton.backgroundColor = UIColor.green
            bottomRightButton.backgroundColor = UIColor.green
            someoneHasWon()
        }
        if (playerSquareCounter[0][0] == playerSquareCounter[1][1] && playerSquareCounter[1][1] == playerSquareCounter[2][2] && playerSquareCounter[2][2] != 0) {
            print("someone has won")
            topLeftButton.backgroundColor = UIColor.green
            middleMiddleButton.backgroundColor = UIColor.green
            bottomRightButton.backgroundColor = UIColor.green
            someoneHasWon()
        }
        if (playerSquareCounter[0][2] == playerSquareCounter[1][1] && playerSquareCounter[1][1] == playerSquareCounter[2][0] && playerSquareCounter[2][0] != 0) {
            print("someone has won")
            topRightButton.backgroundColor = UIColor.green
            middleMiddleButton.backgroundColor = UIColor.green
            bottomLeftButton.backgroundColor = UIColor.green
            someoneHasWon()
        }
        
        
        
    }
    
    func someoneHasWon() {
        clickable = false
        var winner = ""
        if (player1 == true) {
            bottomHeadline.text = "Player 2 Wins!"
            winner = "Player 2"
        }
        else {
            bottomHeadline.text = "Player 1 Wins!"
            winner = "Player 1"
        }
        print(winner)
    }
    @IBAction func resetButtonPressed(_ sender: UIButton) {
        playerSquareCounter = [[0, 0, 0], [0, 0, 0], [0, 0, 0]]
        arrayCounter = [[false, false, false], [false, false, false], [false, false, false]]
        arrayCounter = [[false, false, false], [false, false, false], [false, false, false]]
        moveCounter = 0
        clickable = true
        player1 = true
        bottomHeadline.text = "Player 1's Turn"
        
        topLeftButton.setImage(nil, for: .normal)
        topMiddleButton.setImage(nil, for: .normal)
        topRightButton.setImage(nil, for: .normal)
        middleLeftButton.setImage(nil, for: .normal)
        middleMiddleButton.setImage(nil, for: .normal)
        middleRightButton.setImage(nil, for: .normal)
        bottomLeftButton.setImage(nil, for: .normal)
        bottomMiddleButton.setImage(nil, for: .normal)
        bottomRightButton.setImage(nil, for: .normal)
        
        topLeftButton.backgroundColor = UIColor.white
        topMiddleButton.backgroundColor = UIColor.white
        topRightButton.backgroundColor = UIColor.white
        middleLeftButton.backgroundColor = UIColor.white
        middleMiddleButton.backgroundColor = UIColor.white
        middleRightButton.backgroundColor = UIColor.white
        bottomLeftButton.backgroundColor = UIColor.white
        bottomMiddleButton.backgroundColor = UIColor.white
        bottomRightButton.backgroundColor = UIColor.white
        
        
    }
    
}

