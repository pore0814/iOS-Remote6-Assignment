//
//  RoundButton.swift
//  GuessGame
//
//  Created by 王安妮 on 2018/2/26.
//  Copyright © 2018年 Dorainfo. All rights reserved.
//

import UIKit

@IBDesignable
class RoundButton: UIButton {

    @IBInspectable var roundButton:Bool = false {
        didSet {
            if  roundButton {
                layer.cornerRadius = bounds.height/2
                layer.borderWidth = 3
                layer.borderColor  = UIColor.white.cgColor
            }
        }
    }
    override func prepareForInterfaceBuilder() {
        if roundButton {
            layer.cornerRadius =  bounds.height/2
        
            
            
        }
    }
}
