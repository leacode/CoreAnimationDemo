//
//  ShadowPathDemoViewController.swift
//  CoreAnimationDemo
//
//  Created by leacode on 2018/8/2.
//  Copyright © 2018 leacode. All rights reserved.
//

import UIKit

class ShadowPathDemoViewController: UIViewController {

    @IBOutlet weak var layerView1: UIView!
    @IBOutlet weak var layerView2: UIView!
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        layerView1.layer.shadowOpacity = 0.5
        layerView2.layer.shadowOpacity = 0.5

        let squarePath = CGMutablePath()
        squarePath.addRect(layerView1.bounds)
        layerView1.layer.shadowPath = squarePath
        
        let circlePath = CGMutablePath()
        circlePath.addEllipse(in: layerView2.bounds)
        layerView2.layer.shadowPath = circlePath
        
        displayCode()
    }
    
    private func displayCode() {
        
        let code = """

        layerView1.layer.shadowOpacity = 0.5
        layerView2.layer.shadowOpacity = 0.5

        let squarePath = CGMutablePath()
        squarePath.addRect(layerView1.bounds)
        layerView1.layer.shadowPath = squarePath
        
        let circlePath = CGMutablePath()
        circlePath.addEllipse(in: layerView2.bounds)
        layerView2.layer.shadowPath = circlePath
        
        """
        
        textView.displayCode(code: code)
        
    }
    

}
