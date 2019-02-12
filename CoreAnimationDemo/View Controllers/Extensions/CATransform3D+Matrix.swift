//
//  CATransform3D+Matrix.swift
//  CoreAnimationDemo
//
//  Created by leacode on 2019/1/14.
//  Copyright © 2019 leacode. All rights reserved.
//

import QuartzCore

extension CATransform3D {
    
    var matrix: String{
        
        return """
                \(m11), \(m12), \(m13), \(m14),
                \(m21), \(m22), \(m23), \(m24),
                \(m31), \(m32), \(m33), \(m34),
                \(m41), \(m42), \(m43), \(m44)
               """
        
    }
    
}
