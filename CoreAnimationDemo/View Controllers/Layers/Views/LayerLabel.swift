//
//  LayerLabel.swift
//  CoreAnimationDemo
//
//  Created by leacode on 2019/1/13.
//  Copyright © 2019 leacode. All rights reserved.
//

import UIKit

class LayerLabel: UILabel {

    override var layer: CALayer {
        return CATextLayer()
    }

    var textLayer: CATextLayer {
        return self.layer as! CATextLayer
    }
    
    func setup() {
        // set defaults from UILabel settings
        let text = self.text
        self.text = text
        
        let textColor = self.textColor
        self.textColor = textColor
        
        let font = self.font
        self.font = font
        
        // we should really derive these from the UILabel settings too
        // but that's too complicated, so for now we'll just hard-code them
        self.textLayer.alignmentMode = CATextLayerAlignmentMode.justified
        
        self.textLayer.isWrapped = true
        self.layer.display()
    }
    
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//        setup()
//    }
    
//    required init?(coder: NSCoder) {
//        super.init(coder: coder)
//        setup()
//    }
//
//    override func awakeFromNib() {
//        setup()
//    }
    
    override var text: String? {
        set {
            super.text = newValue
            self.textLayer.string = newValue
        }
        get {
            return super.text
        }
    }
    
    override var textColor: UIColor! {
        get {
            return super.textColor
        }
        set {
            super.textColor = newValue
            // set layer text color
            self.textLayer.foregroundColor = textColor.cgColor
        }
    }
    
    override var font: UIFont! {
        get {
            return super.font
        }
        set {
            super.font = newValue
            // set layer font
            let fontName = newValue.fontName as CFString
            let fontRef = CGFont(fontName)
            self.textLayer.font = fontRef
            self.textLayer.fontSize = font.pointSize
            
        }
    }
    
    
}
