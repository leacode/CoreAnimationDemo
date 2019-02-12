//
//  CATiledLayerDemoViewController.swift
//  CoreAnimationDemo
//
//  Created by leacode on 2019/1/14.
//  Copyright © 2019 leacode. All rights reserved.
//

import UIKit

class CATiledLayerDemoViewController: UIViewController, CALayerDelegate {
    
    @IBOutlet weak var scrollView: UIScrollView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tileLayer = CATiledLayer()
        tileLayer.frame = CGRect(x: 0, y: 0, width: 2048, height: 2048)
        tileLayer.delegate = self
        self.scrollView.layer.addSublayer(tileLayer)
        
        // configure the scroll view
        self.scrollView.contentSize = tileLayer.frame.size
        
        tileLayer.contentsScale = UIScreen.main.scale
        // draw layer
        tileLayer.setNeedsLayout()

    }
    
    func draw(_ layer: CALayer, in ctx: CGContext) {
        
        // determine title coordinate
        let bounds = ctx.boundingBoxOfClipPath
        let scale = UIScreen.main.scale
        let x = floor(bounds.origin.x / (layer as! CATiledLayer).tileSize.width * scale)
        let y = floor(bounds.origin.y / (layer as! CATiledLayer).tileSize.height * scale)
        
        // load tile image
        
        let xStr = String(format: "%02f", x)
        let yStr = String(format: "%02f", y)
        
        let imageName = "Snowman_\(xStr)_\(yStr)"
        if let imagePath = Bundle.main.path(forResource: imageName, ofType: "jpg") {
            let tileImage = UIImage(contentsOfFile: imagePath)
            
            // draw tile
            UIGraphicsPushContext(ctx)
            tileImage?.draw(in: bounds)
            UIGraphicsPopContext()
        }
        
        
    }

}
