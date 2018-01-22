//
//  ViewController.swift
//  SP 21 Calculator
//
//  Created by Tom Sulik on 1/20/18.
//  Copyright © 2018 RT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var runningCount: Int = -4
    var suits: String = "enter suits"
    var numberEntered: Int = 0
    var upcardValue: Int = 0
    var handValue: [Int] = []
    var cardsDealt: Int = 0
    @IBOutlet weak var count: UILabel!
    @IBOutlet weak var upcard: UILabel!
    @IBOutlet weak var hand: UILabel!
    @IBOutlet weak var play: UILabel!
    @IBOutlet weak var suitsButtonLabel: UIButton!
    @IBAction func ten(_ sender: UIButton) {
        print("10 was pressed")
    }
    @IBAction func nine(_ sender: UIButton) {
        print("9 was pressed")
    }
    @IBAction func eight(_ sender: UIButton) {
    }
    @IBAction func seven(_ sender: UIButton) {
    }
    @IBAction func six(_ sender: UIButton){
    }
    @IBAction func five(_ sender: UIButton) {
    }
    @IBAction func four(_ sender: UIButton) {
    }
    @IBAction func three(_ sender: UIButton) {
    }
    @IBAction func two(_ sender: UIButton) {
        print("two")
    }
    @IBAction func ace(_ sender: UIButton) {
    }
    @IBAction func `return`(_ sender: UIButton) {
    }
    @IBAction func backspace(_ sender: UIButton) {
    }
    @IBAction func changeCount(_ sender: UIStepper) {
        runningCount = Int(sender.value)
        count.text = "Count: \(runningCount.description)"
    }
    @IBAction func changeSuits(_ sender: UIButton) {
        numberEntered += 1
        if numberEntered > 2 {
            numberEntered = 0
        }
        enterSuitedBonus(bonusCode: numberEntered)
    }
    func enterSuitedBonus(bonusCode: Int) {
        switch bonusCode {
        case 0: suitsButtonLabel.setTitle("unmatched", for: .normal)
        case 1: suitsButtonLabel.setTitle("matching", for: .normal)
        case 2: suitsButtonLabel.setTitle("spades", for: .normal)
        default: suitsButtonLabel.setTitle("enter", for: .normal)
        }
    }
    func dealUpcard(pipValue: Int) {
        upcard.text = "Upcard: \(pipValue)"
    }
    func dealCard(pipValue: Int) {
        cardsDealt += 1
        if cardsDealt == 3 {
            dealUpcard(pipValue: pipValue)
        } else {
            dealToPlayer(pipValue: pipValue)
        }
    }
    func dealToPlayer(pipValue: Int) {
        handValue.append(pipValue)

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

