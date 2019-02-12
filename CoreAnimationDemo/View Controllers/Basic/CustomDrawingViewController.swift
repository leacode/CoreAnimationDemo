//
//  CustomDrawingViewController.swift
//  CoreAnimationDemo
//
//  Created by leacode on 2018/8/1.
//  Copyright © 2018 leacode. All rights reserved.
//

import UIKit

class CustomDrawingViewController: UIViewController, CALayerDelegate {
    
    @IBOutlet weak var layerView: UIView!
    @IBOutlet weak var textView: UITextView!
    
    var blueLayer = CALayer()

    override func viewDidLoad() {
        super.viewDidLoad()

       
        blueLayer.frame = CGRect(x: 50.0, y: 50.0, width: 100.0, height: 100.0)
        blueLayer.backgroundColor = UIColor.blue.cgColor
        
        blueLayer.delegate = self
        
        blueLayer.contentsScale = UIScreen.main.scale
        layerView.layer.addSublayer(blueLayer)
        
        blueLayer.display()
        
        displayCode()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        blueLayer.removeFromSuperlayer()
    }
    
    func draw(_ layer: CALayer, in ctx: CGContext) {
        // draw a thick red circle
        ctx.setLineWidth(10.0)
        ctx.setStrokeColor(UIColor.red.cgColor)
        ctx.strokeEllipse(in: layer.bounds)
    }

    private func displayCode() {
        
        let code = """

        override func viewDidLoad() {
            super.viewDidLoad()

            blueLayer.frame = CGRect(x: 50.0, y: 50.0, width: 100.0, height: 100.0)
            blueLayer.backgroundColor = UIColor.blue.cgColor
        
            blueLayer.delegate = self
        
            blueLayer.contentsScale = UIScreen.main.scale
            layerView.layer.addSublayer(blueLayer)
        
            blueLayer.display()
        }

        func draw(_ layer: CALayer, in ctx: CGContext) {
            // draw a thick red circle
            ctx.setLineWidth(10.0)
            ctx.setStrokeColor(UIColor.red.cgColor)
            ctx.strokeEllipse(in: layer.bounds)
        }

        """
        
        textView.displayCode(code: code)
        
    }

}
