//
//  ViewController.swift
//  Quiz app
//
//  Created by Krishna Chandra Joshi on 9/15/16.
//  Copyright © 2016 Krishna Chandra Joshi. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    var showAns: UInt32?
    @IBOutlet var answerLabel: UILabel!
    @IBOutlet var quesLabel: UILabel!
    @IBAction func ChangeQuestion(ques: UIButton){
        ques.setTitle("Play Again", forState: .Normal)
        let num1 = arc4random_uniform(100)
        let num2 = arc4random_uniform(100)
        let ans = num1 + num2
        answerLabel.text = "?"
        showAns = ans
        quesLabel.text = ("\(num1)+\(num2)")
        //index += 1
    }
    @IBAction func ShowAns(solve: UIButton){
        if showAns != nil{
        answerLabel.text = ("\(showAns!)")
        }
        else{
            answerLabel.text = "Solution"
        }
            }
    
}

