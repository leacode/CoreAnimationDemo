//
//  CATransformLayerDemoViewController.swift
//  CoreAnimationDemo
//
//  Created by leacode on 2019/1/14.
//  Copyright © 2019 leacode. All rights reserved.
//

import UIKit

class CATransformLayerDemoViewController: UIViewController {
    
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var textView: UITextView!
    
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
        c2t = CATransform3DRotate(c2t, -CGFloat.pi / 4, 1, 0, 0)
        c2t = CATransform3DRotate(c2t, -CGFloat.pi / 4, 0, 1, 0)
        let cube2 = self.cube(with: c2t)
        self.containerView.layer.addSublayer(cube2)
        
        displayCode()
    }
    
    func face(with transform: CATransform3D) -> CALayer {
        // create cube face layer
        let face = CALayer()
        face.frame = CGRect(x: -50, y: -50, width: 100, height: 100)
        
        // apply a radom color
        let red = CGFloat(Double(Int.random(in: 0...Int.max)) / Double(Int.max))
        let green = CGFloat(Double(Int.random(in: 0...Int.max)) / Double(Int.max))
        let blue = CGFloat(Double(Int.random(in: 0...Int.max)) / Double(Int.max))
        
        face.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1.0).cgColor
        
        // apply the transform and return
        face.transform = transform
        return face
    }
    
    func cube(with transform: CATransform3D) -> CALayer {
        // create cube layer
        let cube = CATransformLayer()
        
        // add cube face 1
        var ct = CATransform3DMakeTranslation(0, 0, 50)
        cube.addSublayer(self.face(with: ct))
        
        // add cube face 2
        ct = CATransform3DMakeTranslation(50, 0, 0)
        ct = CATransform3DRotate(ct, CGFloat.pi / 2, 0, 1, 0)
        cube.addSublayer(self.face(with: ct))
        
        // add cube face 3
        ct = CATransform3DMakeTranslation(0, -50, 0)
        ct = CATransform3DRotate(ct, CGFloat.pi / 2, 1, 0, 0)
        cube.addSublayer(self.face(with: ct))
        
        // add cube face 4
        ct = CATransform3DMakeTranslation(0, 50, 0)
        ct = CATransform3DRotate(ct, -CGFloat.pi / 2, 1, 0, 0)
        cube.addSublayer(self.face(with: ct))
        
        // add cube face 5
        ct = CATransform3DMakeTranslation(-50, 0, 0)
        ct = CATransform3DRotate(ct, -CGFloat.pi / 2, 0, 1, 0)
        cube.addSublayer(self.face(with: ct))
        
        // add cube face 6
        ct = CATransform3DMakeTranslation(0, 0, -50)
        ct = CATransform3DRotate(ct, CGFloat.pi, 0, 1, 0)
        cube.addSublayer(self.face(with: ct))
        
        // center the cube layer within the container
        let containerSize = self.containerView.bounds.size
        cube.position = CGPoint(x: containerSize.width / 2.0, y: containerSize.height / 2.0)
        
        // apply the transform and return
        cube.transform = transform
        return cube
    }
    
    private func displayCode() {
        
        let code = """
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
            c2t = CATransform3DRotate(c2t, -CGFloat.pi / 4, 1, 0, 0)
            c2t = CATransform3DRotate(c2t, -CGFloat.pi / 4, 0, 1, 0)
            let cube2 = self.cube(with: c2t)
            self.containerView.layer.addSublayer(cube2)
        }
        func face(with transform: CATransform3D) -> CALayer {
            // create cube face layer
            let face = CALayer()
            face.frame = CGRect(x: -50, y: -50, width: 100, height: 100)
            
            // apply a radom color
            let red = CGFloat(Double(Int.random(in: 0...Int.max)) / Double(Int.max))
            let green = CGFloat(Double(Int.random(in: 0...Int.max)) / Double(Int.max))
            let blue = CGFloat(Double(Int.random(in: 0...Int.max)) / Double(Int.max))
            
            face.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1.0).cgColor
            
            // apply the transform and return
            face.transform = transform
            return face
        }
        func cube(with transform: CATransform3D) -> CALayer {
            // create cube layer
            let cube = CATransformLayer()
            
            // add cube face 1
            var ct = CATransform3DMakeTranslation(0, 0, 50)
            cube.addSublayer(self.face(with: ct))
            
            // add cube face 2
            ct = CATransform3DMakeTranslation(50, 0, 0)
            ct = CATransform3DRotate(ct, CGFloat.pi / 2, 0, 1, 0)
            cube.addSublayer(self.face(with: ct))
            
            // add cube face 3
            ct = CATransform3DMakeTranslation(0, -50, 0)
            ct = CATransform3DRotate(ct, CGFloat.pi / 2, 1, 0, 0)
            cube.addSublayer(self.face(with: ct))
            
            // add cube face 4
            ct = CATransform3DMakeTranslation(0, 50, 0)
            ct = CATransform3DRotate(ct, -CGFloat.pi / 2, 1, 0, 0)
            cube.addSublayer(self.face(with: ct))
            
            // add cube face 5
            ct = CATransform3DMakeTranslation(-50, 0, 0)
            ct = CATransform3DRotate(ct, -CGFloat.pi / 2, 0, 1, 0)
            cube.addSublayer(self.face(with: ct))
            
            // add cube face 6
            ct = CATransform3DMakeTranslation(0, 0, -50)
            ct = CATransform3DRotate(ct, CGFloat.pi, 0, 1, 0)
            cube.addSublayer(self.face(with: ct))
            
            // center the cube layer within the container
            let containerSize = self.containerView.bounds.size
            cube.position = CGPoint(x: containerSize.width / 2.0, y: containerSize.height / 2.0)
            
            // apply the transform and return
            cube.transform = transform
            return cube
        }
        """
        
        textView.displayCode(code: code)
        
    }

}
