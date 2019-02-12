//
//  OpacityDemoViewController.swift
//  CoreAnimationDemo
//
//  Created by leacode on 2018/8/3.
//  Copyright © 2018 leacode. All rights reserved.
//

import UIKit

class OpacityDemoViewController: UIViewController {
    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var textView: UITextView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let label1 = UILabel()
        label1.text = "Hello World"
        label1.textColor = .black
        label1.font = UIFont.systemFont(ofSize: 15.0)
        label1.sizeToFit()
        label1.center = CGPoint(x: button1.frame.size.width / 2, y: button1.frame.size.height / 2)
        
        button1.layer.cornerRadius = 10
        button1.addSubview(label1)
        
        let label2 = UILabel()
        label2.text = "Hello World"
        label2.textColor = .black
        label2.backgroundColor = .white
        label2.font = UIFont.systemFont(ofSize: 15.0)
        label2.sizeToFit()
        label2.center = CGPoint(x: button2.frame.size.width / 2, y: button2.frame.size.height / 2)
        
        button2.layer.cornerRadius = 10
        button2.addSubview(label2)
        
        button2.layer.shouldRasterize = true
        button2.layer.rasterizationScale = UIScreen.main.scale
        
        button2.alpha = 0.5

        displayCode()
    }
    
    private func displayCode() {
        
        let code = """
        let label1 = UILabel()
        label1.text = "Hello World"
        label1.textColor = .black
        label1.font = UIFont.systemFont(ofSize: 15.0)
        label1.sizeToFit()
        label1.center = CGPoint(x: button1.frame.size.width / 2, y: button1.frame.size.height / 2)
        
        button1.layer.cornerRadius = 10
        button1.addSubview(label1)
        
        let label2 = UILabel()
        label2.text = "Hello World"
        label2.textColor = .black
        label2.backgroundColor = .white
        label2.font = UIFont.systemFont(ofSize: 15.0)
        label2.sizeToFit()
        label2.center = CGPoint(x: button2.frame.size.width / 2, y: button2.frame.size.height / 2)
        
        button2.layer.cornerRadius = 10
        button2.addSubview(label2)
        
        button2.layer.shouldRasterize = true
        button2.layer.rasterizationScale = UIScreen.main.scale
        
        button2.alpha = 0.5
        """
        
        textView.displayCode(code: code)
    }
    

}
