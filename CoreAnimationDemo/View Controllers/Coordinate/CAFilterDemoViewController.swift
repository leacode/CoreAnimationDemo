//
//  CAFilterDemoViewController.swift
//  CoreAnimationDemo
//
//  Created by leacode on 2018/8/2.
//  Copyright © 2018 leacode. All rights reserved.
//

import UIKit

class CAFilterDemoViewController: UIViewController {
    
    @IBOutlet var digitViews: [UIView]!
    @IBOutlet weak var textView: UITextView!
    
    weak var timer: Timer!

    override func viewDidLoad() {
        super.viewDidLoad()

        let digits = UIImage(named: "digits")
        
        for digitView in digitViews {
            digitView.layer.contents = digits?.cgImage
            digitView.layer.contentsRect = CGRect(x: 0, y: 0, width: 0.1, height: 1.0)
            digitView.layer.contentsGravity = CALayerContentsGravity.resizeAspect
        }
        
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(self.tick), userInfo: nil, repeats: true)
        
        tick()
        
        displayCode()
    }
    
    private func setDigit(digit: Int, forView view: UIView) {
        
        view.layer.contentsRect = CGRect(x: CGFloat(digit) * 0.1, y: 0, width: 0.1, height: 1.0)
        
    }
    
    @objc func tick() {
        
        let calendar = Calendar(identifier: Calendar.Identifier.gregorian)
        
        let units: Set<Calendar.Component> = [Calendar.Component.hour, Calendar.Component.minute, Calendar.Component.second]
        let components = calendar.dateComponents(units, from: Date())

        // set hours
        self.setDigit(digit: components.hour! / 10, forView: digitViews[0])
        self.setDigit(digit: components.hour! % 10, forView: digitViews[1])

        // set minutes
        self.setDigit(digit: components.minute! / 10, forView: digitViews[2])
        self.setDigit(digit: components.minute! % 10, forView: digitViews[3])

        // set seconds
        self.setDigit(digit: components.second! / 10, forView: digitViews[4])
        self.setDigit(digit: components.second! % 10, forView: digitViews[5])
        
    }
    
    private func displayCode() {
        
        let code = """

        weak var timer: Timer!

        override func viewDidLoad() {
            super.viewDidLoad()

            let digits = UIImage(named: "digits")
            
            for digitView in digitViews {
                digitView.layer.contents = digits?.cgImage
                digitView.layer.contentsRect = CGRect(x: 0, y: 0, width: 0.1, height: 1.0)
                digitView.layer.contentsGravity = CALayerContentsGravity.resizeAspect
            }
            
            timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(self.tick), userInfo: nil, repeats: true)
            
            tick()
        }

        private func setDigit(digit: Int, forView view: UIView) {
            
            view.layer.contentsRect = CGRect(x: CGFloat(digit) * 0.1, y: 0, width: 0.1, height: 1.0)
            
        }
        
        @objc func tick() {
            
            let calendar = Calendar(identifier: Calendar.Identifier.gregorian)
            
            let units: Set<Calendar.Component> = [Calendar.Component.hour, Calendar.Component.minute, Calendar.Component.second]
            let components = calendar.dateComponents(units, from: Date())

            // set hours
            self.setDigit(digit: components.hour! / 10, forView: digitViews[0])
            self.setDigit(digit: components.hour! % 10, forView: digitViews[1])

            // set minutes
            self.setDigit(digit: components.minute! / 10, forView: digitViews[2])
            self.setDigit(digit: components.minute! % 10, forView: digitViews[3])

            // set seconds
            self.setDigit(digit: components.second! / 10, forView: digitViews[4])
            self.setDigit(digit: components.second! % 10, forView: digitViews[5])
            
        }
        
        """
        
        textView.displayCode(code: code)
    }
    


}
