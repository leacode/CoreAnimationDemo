//
//  ReflectionView.swift
//  CoreAnimationDemo
//
//  Created by leacode on 2019/1/14.
//  Copyright © 2019 leacode. All rights reserved.
//

import UIKit

class ReflectionView: UIView {
    
    var imageView: UIImageView!

    override var layer: CALayer {
        return CAReplicatorLayer()
    }
    
    func setup() {
        // configure replicator
        let layer = self.layer as! CAReplicatorLayer
        layer.instanceCount = 2
        layer.shouldRasterize = true
        layer.rasterizationScale = UIScreen.main.scale
        
        // move reflection instance below original and flip vertically
        var transform = CATransform3DIdentity
        let verticalOffset = self.bounds.size.height + 2
        transform = CATransform3DTranslate(transform, 0, verticalOffset, 0.0)
        transform = CATransform3DScale(transform, 1, -1, 0)
        layer.instanceTransform = transform
        
        // reduce alpha of reflection layer
        layer.instanceAlphaOffset = 0.6
        
        
        
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
//        setup()
    }
    
    override func awakeFromNib() {
        setup()
    }

}
