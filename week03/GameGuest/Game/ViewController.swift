//
//  ViewController.swift
//  Game
//
//  Created by 王安妮 on 2018/2/27.
//  Copyright © 2018年 Dorainfo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //輸入數字
    @IBOutlet weak var inputLbl: UILabel!
    //終極密碼  1~100
    @IBOutlet weak var outputLbl: UILabel!
    //make a random number
    var answer = Int(arc4random_uniform(100)) + 1
    var maxNumber = 100
    var minNumber  = 1
    var runningNumber = ""
    var isOver = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      print(answer)
       inputLbl.text = "請輸入數字"
       outputLbl.text = "終極密碼 \(minNumber) ~ \(maxNumber)"
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func numberPressed(_ sender: RoundButton) {
        runningNumber += "\(sender.tag)"
        inputLbl.text =  runningNumber
        print(runningNumber)
    }
   
    @IBAction func allClearPressed(_ sender: RoundButton) {
        runningNumber = ""
        inputLbl.text =  "請輸入數字"
    }
    
    @IBAction func outputPressed(_ sender: RoundButton) {
        if isOver == false {
            let inputNumber =  Int(runningNumber)
            if inputNumber != nil {
                if inputNumber! > maxNumber {
                    outputLbl.text = "超出\(minNumber) ~ \(maxNumber)範圍!"
                }else if inputNumber! < minNumber {
                    outputLbl.text = "請輸入\(minNumber) ~ \(maxNumber)範圍"
                }else if inputNumber == answer {
                    outputLbl.text = "Game Over !按右下角重玩"
                    isOver = true
                    sender.setTitle("重玩", for: .normal)
                }else {
                    if inputNumber! > answer {
                        maxNumber = inputNumber!
                        outputLbl.text =  "終極密碼\(minNumber) ~ \(maxNumber)"
                    }else {
                        minNumber = inputNumber!
                        outputLbl.text = " 終極密碼\(minNumber) ~ \(maxNumber)"
                    }
                }
            }
                runningNumber = ""
                inputLbl.text = ""
            }else {
            
                //重玩
                //重設最大值跟最小值
                maxNumber = 100
                minNumber = 1
                outputLbl.text = "終極密碼 \(minNumber) ~ \(maxNumber)"
                answer = Int(arc4random_uniform(100)) + 1
                print(answer)
                isOver = false
                sender.setTitle("送出", for: .normal)
             }
            }
        
        
        }




