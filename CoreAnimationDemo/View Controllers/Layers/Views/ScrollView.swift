//
//  ScrollView.swift
//  CoreAnimationDemo
//
//  Created by leacode on 2019/1/14.
//  Copyright © 2019 leacode. All rights reserved.
//

import UIKit

class ScrollView: UIView {

    override var layer: CALayer {
        return CAScrollLayer()
    }
    
    private func setUp() {
        // enable clipping
        self.layer.masksToBounds = true
        
        // attach pan gesture recognizer
        let gesture: UIPanGestureRecognizer = UIPanGestureRecognizer(target: self, action: #selector(self.pan(recognizer:)))
        self.addGestureRecognizer(gesture)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func awakeFromNib() {
        setUp()
    }
    
    @objc func pan(recognizer: UIPanGestureRecognizer) {
        // get the offset by substracting the pan gesture
        // translation from the current bounds origin
        var offset = self.bounds.origin
        offset.x -= recognizer.translation(in: self).x
        offset.y -= recognizer.translation(in: self).y
        
        // scroll the layer
        (self.layer as! CAScrollLayer).scroll(to: offset)
        
        // reset the pan gesture translation
        recognizer.setTranslation(CGPoint.zero, in: self)
    }
    
    
    
}
