//
//  Emitter.swift
//  CoreAnimationDemo
//
//  Created by leacode on 2019/2/10.
//  Copyright © 2019 leacode. All rights reserved.
//

import UIKit

class Emitter {
    
    static func get(with image: UIImage) -> CAEmitterLayer {
        let emitter = CAEmitterLayer()
        emitter.emitterShape = .line
        emitter.emitterCells = generateEmitterCells(with: image)
        return emitter
    }
    
    static func generateEmitterCells(with image: UIImage) -> [CAEmitterCell] {
        var cells = [CAEmitterCell]()
        
        let cell = CAEmitterCell()
        cell.contents = image.cgImage
        cell.birthRate = 1
        cell.lifetime = 50
        cell.velocity = CGFloat(20)
        cell.alphaRange = 0.1
        cell.alphaSpeed = 1
        cell.emissionLatitude = 180 * (.pi / 180)
        cell.emissionRange = 45 * (.pi / 180)
        cell.scale = 0.6
        cell.scaleRange = 0.3
        cells.append(cell)
        
        return cells
    }
    
}
