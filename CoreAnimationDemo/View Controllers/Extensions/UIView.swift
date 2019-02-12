//
//  UIView.swift
//  CoreAnimationDemo
//
//  Created by leacode on 2018/8/6.
//  Copyright © 2018 leacode. All rights reserved.
//

import UIKit

extension UIView {
    
    // Coordinate utilities
    func offsetPoint(toParentCoordinates aPoint: CGPoint) -> CGPoint {
        return CGPoint(x: aPoint.x + center.x, y: aPoint.y + center.y)
    }
    
    func point(inViewCenterTerms aPoint: CGPoint) -> CGPoint {
        return CGPoint(x: aPoint.x - center.x, y: aPoint.y - center.y)
    }
    
    func point(inTransformedView aPoint: CGPoint) -> CGPoint {
        let offsetItem: CGPoint = point(inViewCenterTerms: aPoint)
        let updatedItem: CGPoint = offsetItem.applying(transform)
        let finalItem: CGPoint = offsetPoint(toParentCoordinates: updatedItem)
        return finalItem
    }
    
    func originalFrame() -> CGRect {
        let currentTransform: CGAffineTransform = transform
        transform = CGAffineTransform.identity
        let originalFrame: CGRect = frame
        transform = currentTransform
        return originalFrame
    }
    
    // These four methods return the positions of view elements
    // with respect to the current transform
    func transformedTopLeft() -> CGPoint {
        let frame: CGRect = originalFrame()
        let point: CGPoint = frame.origin
        return self.point(inTransformedView: point)
    }
    
    func transformedTopRight() -> CGPoint {
        let frame: CGRect = originalFrame()
        var point: CGPoint = frame.origin
        point.x += frame.size.width
        return self.point(inTransformedView: point)
    }
    
    func transformedBottomRight() -> CGPoint {
        let frame: CGRect = originalFrame()
        var point: CGPoint = frame.origin
        point.x += frame.size.width
        point.y += frame.size.height
        return self.point(inTransformedView: point)
    }
    
    func transformedBottomLeft() -> CGPoint {
        let frame: CGRect = originalFrame()
        var point: CGPoint = frame.origin
        point.y += frame.size.height
        return self.point(inTransformedView: point)
    }
    
}
