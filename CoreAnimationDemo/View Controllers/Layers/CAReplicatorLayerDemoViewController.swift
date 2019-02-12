//
//  CAReplicatorLayerDemoViewController.swift
//  CoreAnimationDemo
//
//  Created by leacode on 2019/1/14.
//  Copyright © 2019 leacode. All rights reserved.
//

import UIKit

class CAReplicatorLayerDemoViewController: UITableViewController {

    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var textView1: UITextView!
    @IBOutlet weak var reflectionView: ReflectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // create a replicator layer and add it to our view
        let replicator = CAReplicatorLayer()
        replicator.frame = self.containerView.bounds
        self.containerView.layer.addSublayer(replicator)
        
        // configure the replicator
        replicator.instanceCount = 10

        // apply a transform for each instance
        var transform = CATransform3DIdentity
        transform = CATransform3DTranslate(transform, 0, 60, 0)
        transform = CATransform3DRotate(transform, CGFloat.pi / 5.0, 0, 0, 1)
        transform = CATransform3DTranslate(transform, 0, -60, 0)
        replicator.instanceTransform = transform
        
        // apply a color shift for each instance
        replicator.instanceBlueOffset = -0.1
        replicator.instanceGreenOffset = -0.1
        
        // create a sublayer and place it inside the replicator
        let layer = CALayer()
        layer.frame = CGRect(x: self.containerView.bounds.size.width / 2, y: 0, width: 60.0, height: 60.0)
        layer.backgroundColor = UIColor.white.cgColor
        replicator.addSublayer(layer)
        
        displayCode()
    }

    private func displayCode() {
        
        let code = """
        // create a replicator layer and add it to our view
        let replicator = CAReplicatorLayer()
        replicator.frame = self.containerView.bounds
        self.containerView.layer.addSublayer(replicator)
        
        // configure the replicator
        replicator.instanceCount = 10

        // apply a transform for each instance
        var transform = CATransform3DIdentity
        transform = CATransform3DTranslate(transform, 0, 60, 0)
        transform = CATransform3DRotate(transform, CGFloat.pi / 5.0, 0, 0, 1)
        transform = CATransform3DTranslate(transform, 0, -60, 0)
        replicator.instanceTransform = transform
        
        // apply a color shift for each instance
        replicator.instanceBlueOffset = -0.1
        replicator.instanceGreenOffset = -0.1
        
        // create a sublayer and place it inside the replicator
        let layer = CALayer()
        layer.frame = CGRect(x: self.containerView.bounds.size.width / 2, y: 0, width: 60.0, height: 60.0)
        layer.backgroundColor = UIColor.white.cgColor
        replicator.addSublayer(layer)
        """
        
        textView.displayCode(code: code)
        
    }
    

}
