//
//  RotateImageViewController.swift
//  RotateImageViewController
//
//  Created by Chunyu Li on 2021/8/20.
//  Copyright © 2021 leacode. All rights reserved.
//

import Foundation
import UIKit

class RotateImageViewController: UIViewController {
    
    @IBOutlet weak var containerView: UIView!
//    @IBOutlet weak var textView: UITextView!
    
    var cube2: CALayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // set up the perspective transform
        var pt: CATransform3D = CATransform3DIdentity
        pt.m34 = -1.0 / 500.0
        self.containerView.layer.sublayerTransform = pt
        
        // set up the transform for cube 1 and add it
        var c1t = CATransform3DIdentity
        c1t = CATransform3DTranslate(c1t, -100, 0, 0)
        let cube1 = self.cube(with: c1t)
        self.containerView.layer.addSublayer(cube1)
        
        // set up the transform for cube2 and add it
        var c2t = CATransform3DIdentity
        c2t = CATransform3DTranslate(c2t, 100, 0, 0)
        c2t = CATransform3DRotate(c2t, CGFloat.pi , 0, 1, 0)

        cube2 = self.cube(with: c2t)
        self.containerView.layer.addSublayer(cube2)
        
        cube2.add(rotateAnimation, forKey: "rotate")
        
    }
    
    lazy var rotateAnimation: CABasicAnimation = {
        let animation = CABasicAnimation()
        animation.keyPath = "transform.rotation.y"
        animation.fromValue = 0.0
        animation.toValue = NSNumber(value: -Float.pi * 2)
        animation.isRemovedOnCompletion = false
        animation.isCumulative = true
        animation.repeatCount = .infinity
        animation.duration = 1.0
        
        return animation
    }()
    
    func face(with transform: CATransform3D) -> CALayer {
        // create cube face layer
        let face = CALayer()
        face.frame = CGRect(x: -50, y: -50, width: 100, height: 100)

        face.backgroundColor = UIColor.clear.cgColor
        
        // apply the transform and return
        face.transform = transform
        return face
    }
    
    func cube(with transform: CATransform3D) -> CALayer {
        // create cube layer
        let cube = CATransformLayer()
        
        // add cube face 1
        var ct = CATransform3DMakeTranslation(0, 0, 0.1)
        
        let face1 = self.face(with: ct)
        let imageView1 = UIImageView(image: UIImage(named: "penguin1"))
        imageView1.contentMode = .scaleAspectFit
        imageView1.frame.size = CGSize(width: 100, height: 100)
        face1.addSublayer(imageView1.layer)
        
        cube.addSublayer(face1)
        
        // add cube face 6
        ct = CATransform3DMakeTranslation(0, 0, -0.1)
        ct = CATransform3DRotate(ct, CGFloat.pi, 0, 1, 0)
        
        let face6 = self.face(with: ct)
        let imageView2 = UIImageView(image: UIImage(named: "penguin"))
        imageView2.contentMode = .scaleAspectFit
        imageView2.frame.size = CGSize(width: 100, height: 100)
        face6.addSublayer(imageView2.layer)
        cube.addSublayer(face6)
        
        // center the cube layer within the container
        let containerSize = self.containerView.bounds.size
        cube.position = CGPoint(x: containerSize.width / 2.0, y: containerSize.height / 2.0)
        
        // apply the transform and return
        cube.transform = transform
        return cube
    }
    
    
    
}
