//
//  MonsterImg.swift
//  myLittleMonster
//
//  Created by Jonathan Tsistinas on 4/11/16.
//  Copyright © 2016 Techinator. All rights reserved.
//

import Foundation
import UIKit

class MonsterImg: UIImageView {
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        playIdleAnimation()
    }
    
    func playIdleAnimation() {
        
        self.image = UIImage(named:"idle1.png")
        
        self.animationImages = nil
        
        
        var imgArray = [UIImage]()
        //swift 2.1 code for loop \/
        //for var x = 1; x <= 4; x += 1 {
        //swift 3.0 code for loop \/
        for x in 1.stride(to: 4, by: 1) {
            let img = UIImage(named: "idle\(x).png")
            imgArray.append(img!)
            
        }
        
        self.animationImages = imgArray
        self.animationDuration = 0.8
        self.animationRepeatCount = 0
        self.startAnimating()
    }
    
    func playDeathAnimation() {
        
        self.image = UIImage(named: "dead5.png")
        
        self.animationImages = nil
        
        var imgArray = [UIImage]()
        //swift 2.1 code for loop \/
        //for var x = 1; x <= 5; x += 1 {
        //swift 3.0 code for loop \/
        for x in 1.stride(to: 5, by: 1) {
            let img = UIImage(named: "dead\(x).png")
            imgArray.append(img!)
        }
        
        self.animationImages = imgArray
        self.animationDuration = 0.8
        self.animationRepeatCount = 1
        self.startAnimating()
    }
}
