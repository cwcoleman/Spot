//
//  ViewController.swift
//  Spot
//
//  Created by Chris Coleman on 12/19/17.
//  Copyright © 2017 Carolina Code. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: Properties
    @IBOutlet weak var diceLabel: UILabel!
    @IBOutlet weak var diceOneImageView: UIImageView!
    @IBOutlet weak var diceTwoImageView: UIImageView!
    @IBOutlet weak var diceThreeImageView: UIImageView!
    @IBOutlet weak var diceFourImageView: UIImageView!
    @IBOutlet weak var diceFiveImageView: UIImageView!
    @IBOutlet weak var diceSixImageView: UIImageView!
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    @IBOutlet weak var diceImageView: UIImageView!
    @IBOutlet weak var rollButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    // MARK: Actions
    @IBAction func roll(_ sender: UIButton) {
    
        print("not implemented...")
        
        
        
        
        
    }
    @IBAction func rollDice(_ sender: UIButton) {
        
        
        let diceSixImage = "dice6.png"
        let diceFiveImage = "dice5.png"
        let diceFourImage = "dice4.png"
        let diceThreeImage = "dice3.png"
        let diceTwoImage = "dice2.png"
        let diceOneImage = "dice1.png"
        
        let diceRollOne = Int(arc4random_uniform(6)+1)
        let diceRollTwo = Int(arc4random_uniform(6)+1)
        let diceRollThree = Int(arc4random_uniform(6)+1)
        let diceRollFour = Int(arc4random_uniform(6)+1)
        let diceRollFive = Int(arc4random_uniform(6)+1)
        let diceRollSix = Int(arc4random_uniform(6)+1)
        print("diceRollOne value: ", diceRollOne)
        print("diceRollTwo value: ", diceRollTwo)
        print("diceRollThree value: ", diceRollThree)
        print("diceRollFour value: ", diceRollFour)
        print("diceRollFive value: ", diceRollFive)
        print("diceRollSix value: ", diceRollSix)
        
        //calculate score...
        
        var score : Int = 0
        
        //check for straight
        if(diceRollOne==1 || diceRollTwo==1 || diceRollThree==1 || diceRollFour==1 || diceRollFive==1 || diceRollSix==1){
            
            print("found a one")
            
            if(diceRollOne==2 || diceRollTwo==2 || diceRollThree==2 || diceRollFour==2 || diceRollFive==2 || diceRollSix==2){
                
                print("found a two")
                
                if(diceRollOne==3 || diceRollTwo==3 || diceRollThree==3 || diceRollFour==3 || diceRollFive==3 || diceRollSix==3){
                    
                    print("found a three")
                    
                    if(diceRollOne==4 || diceRollTwo==4 || diceRollThree==4 || diceRollFour==4 || diceRollFive==4 || diceRollSix==4){
                        
                        print("found a four")
                        
                        if(diceRollOne==5 || diceRollTwo==5 || diceRollThree==5 || diceRollFour==5 || diceRollFive==5 || diceRollSix==5){
                            
                            print("found a five")
                            
                            if(diceRollOne==6 || diceRollTwo==6 || diceRollThree==6 || diceRollFour==6 || diceRollFive==6 || diceRollSix==6){
                                
                                print("found a six")
                                print("found a straight")
                                score += 1500
                            }
                        }
                    }
                }
            }
        }
        
        
        
        //check for 1's
        
        var oneCounter : Int = 0
        
        if(diceRollOne==1){
            print("roll 1 is 1, add 100 points")
            score += 100
            oneCounter += 1
        }
        if(diceRollTwo==1){
            print("roll 2 is 1, add 100 points")
            score += 100
            oneCounter += 1
        }
        if(diceRollThree==1){
            print("roll 3 is 1, add 100 points")
            score += 100
            oneCounter += 1
        }
        if(diceRollFour==1){
            print("roll 4 is 1, add 100 points")
            score += 100
            oneCounter += 1
        }
        if(diceRollFive==1){
            print("roll 5 is 1, add 100 points")
            score += 100
            oneCounter += 1
        }
        if(diceRollSix==1){
            print("roll 6 is 1, add 100 points")
            score += 100
            oneCounter += 1
        }
        
        if(oneCounter >= 3){
            print("1000 points")
            score += 1000
        }
        
        //check for 5's
        
        var fiveCounter : Int = 0
        
        if(diceRollOne==5){
            print("roll 1 is 5, add 50 points")
            fiveCounter += 50
        }
        if(diceRollTwo==5){
            print("roll 2 is 5, add 50 points")
            fiveCounter += 50
        }
        if(diceRollThree==5){
            print("roll 3 is 5, add 50 points")
            fiveCounter += 50
        }
        if(diceRollFour==5){
            print("roll 4 is 5, add 50 points")
            fiveCounter += 50
        }
        if(diceRollFive==5){
            print("roll 5 is 5, add 50 points")
            fiveCounter += 50
        }
        if(diceRollSix==5){
            print("roll 6 is 5, add 50 points")
            fiveCounter += 50
        }
        
        print("five count: ", fiveCounter)
        score += fiveCounter
        
        
        scoreLabel.text = String(score)
        
        //----------------------
        
        if(diceRollOne==1){
            print("dice val 1 is 1")
            diceOneImageView.image  = UIImage(named: diceOneImage)
        }
        if(diceRollOne==2){
            print("dice val 1 is 2")
            diceOneImageView.image  = UIImage(named: diceTwoImage)        }
        if(diceRollOne==3){
            print("dice val 1 is 3")
            diceOneImageView.image  = UIImage(named: diceThreeImage)
        }
        if(diceRollOne==4){
            print("dice val 1 is 4")
            diceOneImageView.image  = UIImage(named: diceFourImage)
        }
        if(diceRollOne==5){
            print("dice val 1 is 5")
            diceOneImageView.image  = UIImage(named: diceFiveImage)
        }
        if(diceRollOne==6){
            print("dice val 1 is 6")
            diceOneImageView.image  = UIImage(named: diceSixImage)
        }
        
        // roll 2
        if(diceRollTwo==1){
            print("dice val 2 is 1")
            diceTwoImageView.image  = UIImage(named: diceOneImage)
        }
        if(diceRollTwo==2){
            print("dice val 2 is 2")
            diceTwoImageView.image  = UIImage(named: diceTwoImage)
        }
        if(diceRollTwo==3){
            print("dice val 2 is 3")
            diceTwoImageView.image  = UIImage(named: diceThreeImage)
        }
        if(diceRollTwo==4){
            print("dice val 2 is 4")
            diceTwoImageView.image  = UIImage(named: diceFourImage)
        }
        if(diceRollTwo==5){
            print("dice val 2 is 5")
            diceTwoImageView.image  = UIImage(named: diceFiveImage)
        }
        if(diceRollTwo==6){
            print("dice val 2 is 6")
            diceTwoImageView.image  = UIImage(named: diceSixImage)
        }
        
        //roll 3
        if(diceRollThree==1){
            print("dice val 3 is 1")
            diceThreeImageView.image  = UIImage(named: diceOneImage)
        }
        if(diceRollThree==2){
            print("dice val 3 is 2")
            diceThreeImageView.image  = UIImage(named: diceTwoImage)
        }
        if(diceRollThree==3){
            print("dice val 3 is 3")
            diceThreeImageView.image  = UIImage(named: diceThreeImage)
        }
        if(diceRollThree==4){
            print("dice val 3 is 4")
            diceThreeImageView.image  = UIImage(named: diceFourImage)
        }
        if(diceRollThree==5){
            print("dice val 3 is 5")
            diceThreeImageView.image  = UIImage(named: diceFiveImage)
        }
        if(diceRollThree==6){
            print("dice val 3 is 6")
            diceThreeImageView.image  = UIImage(named: diceSixImage)
        }
        
        //roll 4
        if(diceRollFour==1){
            print("dice val 4 is 1")
            diceFourImageView.image  = UIImage(named: diceOneImage)
        }
        if(diceRollFour==2){
            print("dice val 4 is 2")
            diceFourImageView.image  = UIImage(named: diceTwoImage)
        }
        if(diceRollFour==3){
            print("dice val 4 is 3")
            diceFourImageView.image  = UIImage(named: diceThreeImage)
        }
        if(diceRollFour==4){
            print("dice val 4 is 4")
            diceFourImageView.image  = UIImage(named: diceFourImage)
        }
        if(diceRollFour==5){
            print("dice val 4 is 5")
            diceFourImageView.image  = UIImage(named: diceFiveImage)
        }
        if(diceRollFour==6){
            print("dice val 4 is 6")
            diceFourImageView.image  = UIImage(named: diceSixImage)
        }
        
        //roll 5
        if(diceRollFive==1){
            print("dice val 5 is 1")
            diceFiveImageView.image  = UIImage(named: diceOneImage)
        }
        if(diceRollFive==2){
            print("dice val 5 is 2")
            diceFiveImageView.image  = UIImage(named: diceTwoImage)
        }
        if(diceRollFive==3){
            print("dice val 5 is 3")
            diceFiveImageView.image  = UIImage(named: diceThreeImage)
        }
        if(diceRollFive==4){
            print("dice val 5 is 4")
            diceFiveImageView.image  = UIImage(named: diceFourImage)
        }
        if(diceRollFive==5){
            print("dice val 5 is 5")
            diceFiveImageView.image  = UIImage(named: diceFiveImage)
        }
        if(diceRollFive==6){
            print("dice val 5 is 6")
            diceFiveImageView.image  = UIImage(named: diceSixImage)
        }
        
        //roll 6
        if(diceRollSix==1){
            print("dice val 6 is 1")
            diceSixImageView.image  = UIImage(named: diceOneImage)
        }
        if(diceRollSix==2){
            print("dice val 6 is 2")
            diceSixImageView.image  = UIImage(named: diceTwoImage)
        }
        if(diceRollSix==3){
            print("dice val 6 is 3")
            diceSixImageView.image  = UIImage(named: diceThreeImage)
        }
        if(diceRollSix==4){
            print("dice val 6 is 4")
            diceSixImageView.image  = UIImage(named: diceFourImage)
        }
        if(diceRollSix==5){
            print("dice val 6 is 5")
            diceSixImageView.image  = UIImage(named: diceFiveImage)
        }
        if(diceRollSix==6){
            print("dice val 6 is 6")
            diceSixImageView.image  = UIImage(named: diceSixImage)
        }
        
    }
}

