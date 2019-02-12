//
//  CAGradientLayerDemoViewController.swift
//  CoreAnimationDemo
//
//  Created by leacode on 2019/1/14.
//  Copyright © 2019 leacode. All rights reserved.
//

import UIKit

class CAGradientLayerDemoViewController: UITableViewController {
    
    
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var containerView1: UIView!
    @IBOutlet weak var textView1: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // create gradient layer and add it to our container view
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.containerView.bounds
        self.containerView.layer.addSublayer(gradientLayer)
        
        // set graient colors
        gradientLayer.colors = [UIColor.red.cgColor, UIColor.blue.cgColor]
        
        // set gradient start and end points
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        
        
        // create gradient layer and add it to our container view
        let gradientLayer1 = CAGradientLayer()
        gradientLayer1.frame = self.containerView1.bounds
        self.containerView1.layer.addSublayer(gradientLayer1)
        
        // set gradient colors
        gradientLayer1.colors = [UIColor.red.cgColor, UIColor.yellow.cgColor, UIColor.green.cgColor]
        
        // set locations
        gradientLayer1.locations = [0.0, 0.25, 0.5]
        
        // set gradient start and end points
        gradientLayer1.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer1.endPoint = CGPoint(x: 1, y: 1)
        
        displayCode()
    }

    private func displayCode() {
        
        let code = """
        // create gradient layer and add it to our container view
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.containerView.bounds
        self.containerView.layer.addSublayer(gradientLayer)
        
        // set graient colors
        gradientLayer.colors = [UIColor.red.cgColor, UIColor.blue.cgColor]
        
        // set gradient start and end points
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        """
        
        textView.displayCode(code: code)
        
        let code1 = """
        // create gradient layer and add it to our container view
        let gradientLayer1 = CAGradientLayer()
        gradientLayer1.frame = self.containerView1.bounds
        self.containerView1.layer.addSublayer(gradientLayer1)
        
        // set gradient colors
        gradientLayer1.colors = [UIColor.red.cgColor, UIColor.yellow.cgColor, UIColor.green.cgColor]
        
        // set locations
        gradientLayer1.locations = [0.0, 0.25, 0.5]
        
        // set gradient start and end points
        gradientLayer1.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer1.endPoint = CGPoint(x: 1, y: 1)
        """
        
        textView1.displayCode(code: code1)
        
        
    }

}
