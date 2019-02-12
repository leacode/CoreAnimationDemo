//
//  ShadowDemoViewController.swift
//  CoreAnimationDemo
//
//  Created by leacode on 2018/8/2.
//  Copyright © 2018 leacode. All rights reserved.
//

import UIKit

class ShadowDemoViewController: UIViewController {
    
    @IBOutlet weak var layerView: UIView!
    
    @IBOutlet weak var xoffsetLabel: UILabel!
    @IBOutlet weak var yoffsetLabel: UILabel!
    @IBOutlet weak var opacityLabel: UILabel!
    @IBOutlet weak var shadowRadiusLabel: UILabel!
    
    @IBOutlet weak var xoffsetSlider: UISlider!
    @IBOutlet weak var yoffsetSlider: UISlider!
    @IBOutlet weak var opacitySlider: UISlider!
    @IBOutlet weak var shadowRadiusSlider: UISlider!
    
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        layerView.layer.borderWidth = 2.0
        layerView.layer.cornerRadius = 5.0
//        layerView.clipsToBounds = true

        updateLayerView()
    }
    
    @IBAction func changeOpacity(_ sender: Any) {
        opacityLabel.text = "\(opacitySlider.value)"
        updateLayerView()
    }
    
    @IBAction func changeShadowPosition(_ sender: UISlider) {
        
        let xoffset = xoffsetSlider.value
        let yoffset = yoffsetSlider.value
        
        xoffsetLabel.text = "\(xoffset)"
        yoffsetLabel.text = "\(yoffset)"

        updateLayerView()
    }
    
    @IBAction func changeShadowRadius(_ sender: Any) {
        
        shadowRadiusLabel.text = "\(shadowRadiusSlider.value)"
        updateLayerView()
    }
    
    private func updateLayerView() {
        layerView.layer.shadowOpacity = opacitySlider.value
        layerView.layer.shadowColor = UIColor.black.cgColor
        
        let xoffset = xoffsetSlider.value
        let yoffset = yoffsetSlider.value
        layerView.layer.shadowOffset = CGSize(width: CGFloat(xoffset), height: CGFloat(yoffset))
        layerView.layer.shadowRadius = CGFloat(shadowRadiusSlider.value)
        
        displayCode(xoffset: xoffset, yoffset: yoffset, shadowRadius: shadowRadiusSlider.value, shadowOpacity: opacitySlider.value)
        
    }
    
    func displayCode(xoffset: Float = 0.0, yoffset: Float = 0.0, shadowRadius: Float = 5.0, shadowOpacity: Float = 0.5) {
        
        let code = """
        
        layerView.layer.shadowOpacity = \(shadowOpacity)
        layerView.layer.shadowColor = UIColor.black.cgColor
        layerView.layer.shadowOffset = CGSize(width: \(xoffset), height: \(yoffset)
        layerView.layer.shadowRadius = \(shadowRadius)
        
        """
        
        textView.displayCode(code: code)
        
    }
    
}
