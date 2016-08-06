//
//  ViewController.swift
//  Emoji Slot
//
//  Created by Clemens Pfister on 29/07/2016.
//  Copyright © 2016 Clemens Pfister. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var getEmojiButton: UIButton!
    @IBOutlet weak var no1Label: UILabel!
    @IBOutlet weak var no2Label: UILabel!
    @IBOutlet weak var no3Label: UILabel!
    @IBOutlet weak var winLoseLabel: UILabel!
    
    
    var emoji = Emoji()
   // var result = Result()
    
       
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        winLoseLabel.text = ""
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func getRandomEmojiButton() {
       emoji.randomNumberGen()
        print(emoji.addedEmoji)
        no1Label.text = emoji.addedEmoji[0]
        no2Label.text = emoji.addedEmoji[1]
        no3Label.text = emoji.addedEmoji[2]
        
        winLoseLabel.text = emoji.winOrLose()
    }
    

}

