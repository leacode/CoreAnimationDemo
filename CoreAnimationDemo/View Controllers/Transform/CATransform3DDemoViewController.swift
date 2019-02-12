//
//  CATransform3DDemoViewController.swift
//  CoreAnimationDemo
//
//  Created by leacode on 2018/8/3.
//  Copyright © 2018 leacode. All rights reserved.
//

import UIKit

class CATransform3DDemoViewController: UITableViewController {

    @IBOutlet weak var imageView1: UIImageView!
    @IBOutlet weak var iamgeView1TV: UITextView!
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var imageView2: UIImageView!
    @IBOutlet weak var imageView3: UIImageView!
    @IBOutlet weak var containerViewTV: UITextView!
    
    @IBOutlet weak var imageView4: UIImageView!
    @IBOutlet weak var imageView4TV: UITextView!

    
    @IBOutlet weak var outerView: UIView!
    @IBOutlet weak var innerView: UIView!
    @IBOutlet weak var flatLayerViewTV: UITextView!
    
    @IBOutlet weak var outerView1: UIView!
    @IBOutlet weak var innerView1: UIView!
    @IBOutlet weak var flatLayer1ViewTV: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var transform1 = CATransform3DIdentity
        transform1.m34 = -1.0 / 500.0
        transform1 = CATransform3DRotate(transform1, CGFloat(Float.pi/4.0), 0, 1, 0)
        imageView1.layer.transform = transform1
        
        var perspective = CATransform3DIdentity
        perspective.m34 = -1.0 / 500.0
        containerView.layer.sublayerTransform = perspective
        let transform2 = CATransform3DMakeRotation(CGFloat(Float.pi/4.0), 0, 1, 0)
        imageView2.layer.transform = transform2
        let transform3 = CATransform3DMakeRotation(-CGFloat(Float.pi/4.0), 0, 1, 0)
        imageView3.layer.transform = transform3
        
        let transform4 = CATransform3DMakeRotation(CGFloat(Float.pi), 0, 1, 0)
//        imageView4.layer.isDoubleSided = false
        imageView4.layer.transform = transform4
        
        
        // rotate the outer layer 45 degrees
        let outer = CATransform3DMakeRotation(CGFloat.pi / 4, 0, 0, 1)
        outerView.layer.transform = outer
        
        // rotate the inner layer -45 degrees
        let inner = CATransform3DMakeRotation(-CGFloat.pi / 4, 0, 0, 1)
        innerView.layer.transform = inner
        
        
        // rotate the outer layer 45 degrees
        var outer1 = CATransform3DIdentity
        outer1.m34 = -1.0 / 500.0
        outer1 = CATransform3DRotate(outer1, CGFloat.pi / 4, 0, 1, 0)
        outerView1.layer.transform = outer1
        
        // rotate the inner layer -45 degrees
        var inner1 = CATransform3DIdentity
        inner1.m34 = -1.0 / 500.0
        inner1 = CATransform3DRotate(inner1, -CGFloat.pi / 4, 0, 1, 0)
        innerView1.layer.transform = inner1
        
        
        displayCode()
    }

    private func displayCode() {
        
        let imageView1Code = """
        var transform1 = CATransform3DIdentity
        transform1.m34 = -1.0 / 500.0
        transform1 = CATransform3DRotate(transform1, CGFloat(Float.pi/4.0), 0, 1, 0)
        imageView1.layer.transform = transform1
        """
        iamgeView1TV.displayCode(code: imageView1Code)
        
        let containerViewCode = """
        var perspective = CATransform3DIdentity
        perspective.m34 = -1.0 / 500.0
        containerView.layer.sublayerTransform = perspective
        let transform2 = CATransform3DMakeRotation(CGFloat(Float.pi/4.0), 0, 1, 0)
        imageView2.layer.transform = transform2
        let transform3 = CATransform3DMakeRotation(-CGFloat(Float.pi/4.0), 0, 1, 0)
        imageView3.layer.transform = transform3
        """
        containerViewTV.displayCode(code: containerViewCode)
        
        let imageView4Code = """
        let transform4 = CATransform3DMakeRotation(CGFloat(Float.pi), 0, 1, 0)
        imageView4.layer.transform = transform4
        """
        imageView4TV.displayCode(code: imageView4Code)
        
        let flatLayerViewCode = """
        // rotate the outer layer 45 degrees
        let outer = CATransform3DMakeRotation(CGFloat.pi / 4, 0, 0, 1)
        outerView.layer.transform = outer
        
        // rotate the inner layer -45 degrees
        let inner = CATransform3DMakeRotation(-CGFloat.pi / 4, 0, 0, 1)
        innerView.layer.transform = inner
        """
        flatLayerViewTV.displayCode(code: flatLayerViewCode)
        
        let flatLayerView1Code = """
        // rotate the outer layer 45 degrees
        var outer1 = CATransform3DIdentity
        outer1.m34 = -1.0 / 500.0
        outer1 = CATransform3DRotate(outer1, CGFloat.pi / 4, 0, 1, 0)
        outerView1.layer.transform = outer1
        
        // rotate the inner layer -45 degrees
        var inner1 = CATransform3DIdentity
        inner1.m34 = -1.0 / 500.0
        inner1 = CATransform3DRotate(inner1, -CGFloat.pi / 4, 0, 1, 0)
        innerView1.layer.transform = inner1
        """
        flatLayer1ViewTV.displayCode(code: flatLayerView1Code)
        
        
        
    }
    
}
