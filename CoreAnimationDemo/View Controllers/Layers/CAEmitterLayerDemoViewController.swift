//
//  CAEmitterLayerDemoViewController.swift
//  CoreAnimationDemo
//
//  Created by leacode on 2019/1/14.
//  Copyright © 2019 leacode. All rights reserved.
//

import UIKit

class CAEmitterLayerDemoViewController: UIViewController {
    
    @IBOutlet weak var containerView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()

        let emitter = CAEmitterLayer()
        emitter.frame = self.view.bounds
        self.view.layer.addSublayer(emitter)
        
        // configure emitter
        emitter.renderMode = CAEmitterLayerRenderMode.additive
        emitter.emitterPosition = CGPoint(x: emitter.frame.size.width / 2, y: emitter.frame.size.height / 2)
        
        // create a particle template
        let cell = CAEmitterCell()
        cell.contents = UIImage(named: "spark")?.cgImage
        cell.birthRate = 150
        cell.lifetime = 5.0
        cell.color = UIColor(red: 1.0, green: 0.5, blue: 0.1, alpha: 1.0).cgColor
        cell.alphaSpeed = -0.4
        cell.velocity = 50
        cell.velocityRange = 50
        cell.emissionRange = CGFloat.pi * 2.0
        
        // add particle template to emitter
        emitter.emitterCells = [cell]
    }
    

    

}
