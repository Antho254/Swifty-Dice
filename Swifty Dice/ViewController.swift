//
//  ViewController.swift
//  Swifty Dice
//
//  Created by Anthony Cuthbert on 10/15/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageVeiw: UIImageView!
    @IBOutlet var criticalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonGoPressed(){
        rollDice()
    }
    
    func rollDice(){
        print("WE Rollin Dice!")
        
        let rolledNumber = Int.random(in: 1...20)
        
        let imageName = "d\(rolledNumber)"
        
        diceImageVeiw.image = UIImage(named: imageName)
        
        if (imageName == "d1"){
            criticalLabel.text = "damn that sucks"
        }
        else if (imageName == "d20"){
            criticalLabel.text = "you win"
        }
        else {
            criticalLabel.text = ""
        }
        
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        rollDice()
    }
}

