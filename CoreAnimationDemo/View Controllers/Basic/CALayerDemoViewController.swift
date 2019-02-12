//
//  CALayerDemoViewController.swift
//  CoreAnimationDemo
//
//  Created by leacode on 2018/8/1.
//  Copyright © 2018 leacode. All rights reserved.
//

import UIKit
import Highlightr

class CALayerDemoViewController: UIViewController {
    
    @IBOutlet weak var layerView: UIView!
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let blueLayer = CALayer()
        blueLayer.frame = CGRect(x: 50, y: 50, width: 100, height: 100)
        blueLayer.backgroundColor = UIColor.blue.cgColor
        layerView.layer.addSublayer(blueLayer)

        let code = """
        let blueLayer = CALayer()
        blueLayer.frame = CGRect(x: 50, y: 50, width: 100, height: 100)
        blueLayer.backgroundColor = UIColor.blue.cgColor
        layerView.layer.addSublayer(blueLayer)
        """
        
        textView.displayCode(code: code)
    }
    

}
