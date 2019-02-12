//
//  CustomAnchorPointViewController.swift
//  CoreAnimationDemo
//
//  Created by leacode on 2018/8/1.
//  Copyright © 2018 leacode. All rights reserved.
//

import UIKit

class CustomAnchorPointViewController: UIViewController {
    
    @IBOutlet weak var hourHand: UIImageView!
    @IBOutlet weak var mimuteHand: UIImageView!
    @IBOutlet weak var secondHand: UIImageView!
    @IBOutlet weak var textView: UITextView!
    
    private var timer: Timer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        hourHand.layer.anchorPoint = CGPoint(x: 0.5, y: 0.95)
        mimuteHand.layer.anchorPoint = CGPoint(x: 0.5, y: 0.95)
        secondHand.layer.anchorPoint = CGPoint(x: 0.5, y: 0.95)

        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(self.tick), userInfo: nil, repeats: true)
        
        tick()
        
        displayCode();
    }
    
    @objc private func tick() {
        
        let calendar = Calendar(identifier: Calendar.Identifier.gregorian)
        
        let units: Set<Calendar.Component> = [Calendar.Component.hour, Calendar.Component.minute, Calendar.Component.second]
        let components = calendar.dateComponents(units, from: Date())
        
        let hoursAngle = (Float(components.hour!) / 12.0) * Float.pi * 2.0
        let minutesAngle = (Float(components.minute!) / 60.0) * Float.pi * 2.0
        let secondsAngle = (Float(components.second!) / 60.0) * Float.pi * 2.0
        
        self.hourHand.transform = CGAffineTransform.init(rotationAngle: CGFloat(hoursAngle))
        self.mimuteHand.transform = CGAffineTransform.init(rotationAngle: CGFloat(minutesAngle))
        self.secondHand.transform = CGAffineTransform.init(rotationAngle: CGFloat(secondsAngle))

    }
    
    func displayCode(){
        
        let code = """

        override func viewDidLoad() {
            super.viewDidLoad()
            
            hourHand.layer.anchorPoint = CGPoint(x: 0.5, y: 0.95)
            mimuteHand.layer.anchorPoint = CGPoint(x: 0.5, y: 0.95)
            secondHand.layer.anchorPoint = CGPoint(x: 0.5, y: 0.95)

            timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(self.tick), userInfo: nil, repeats: true)
            
            tick()
            
            displayCode();
        }

        @objc private func tick() {
        
            let calendar = Calendar(identifier: Calendar.Identifier.gregorian)
            
            let units: Set<Calendar.Component> = [Calendar.Component.hour, Calendar.Component.minute, Calendar.Component.second]
            let components = calendar.dateComponents(units, from: Date())
            
            let hoursAngle = (Float(components.hour!) / 12.0) * Float.pi * 2.0
            let minutesAngle = (Float(components.minute!) / 60.0) * Float.pi * 2.0
            let secondsAngle = (Float(components.second!) / 60.0) * Float.pi * 2.0
            
            self.hourHand.transform = CGAffineTransform.init(rotationAngle: CGFloat(hoursAngle))
            self.mimuteHand.transform = CGAffineTransform.init(rotationAngle: CGFloat(minutesAngle))
            self.secondHand.transform = CGAffineTransform.init(rotationAngle: CGFloat(secondsAngle))

        }

        """
        
        textView.displayCode(code: code)
        
        
    }

}
