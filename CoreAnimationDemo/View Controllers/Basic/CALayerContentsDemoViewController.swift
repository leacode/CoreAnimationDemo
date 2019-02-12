//
//  CALayerContentsDemoViewController.swift
//  CoreAnimationDemo
//
//  Created by leacode on 2018/8/1.
//  Copyright © 2018 leacode. All rights reserved.
//

import UIKit

class CALayerContentsDemoViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var stretchableLayerView: UIView!
    
    @IBOutlet weak var layerView: UIView!
    
    
    @IBOutlet weak var imageViewTV: UITextView!
    @IBOutlet weak var strechableLayerViewTV: UITextView!
    
    @IBOutlet weak var layerViewTV: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.contentMode = .scaleAspectFit
        let image = UIImage(named: "run")
        self.layerView.layer.contents = image?.cgImage
        self.layerView.layer.contentsGravity = .center
        self.layerView.layer.contentsScale = UIScreen.main.scale
        self.layerView.clipsToBounds = true
        
//        self.layerView.layer.contentsRect = CGRect(x: 0, y: 0, width: 1.5, height: 1.5)
        
        
        guard let stretchableImage = UIImage(named: "rect") else { return }
        
        // show stretched image in imageView
        imageView.image = stretchableImage.resizableImage(withCapInsets: UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 8))
        
        // show stretched image as layer's contents
        stretchableLayerView.layer.contents = stretchableImage.cgImage
        stretchableLayerView.layer.contentsScale = UIScreen.main.scale
        stretchableLayerView.layer.contentsCenter = CGRect(
            x: 8.0/stretchableImage.size.width,
            y: 8.0/stretchableImage.size.height,
            width: 1-2*(8.0/stretchableImage.size.width),
            height: 1-2*(8.0/stretchableImage.size.height))
        
        displayCode()
    }
    
    private func displayCode() {
        
        let imageViewCode = """
        guard let stretchableImage = UIImage(named: "rect") else { return }

        imageView.image = stretchableImage.resizableImage(withCapInsets: UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 8))
        """
        
        imageViewTV.displayCode(code: imageViewCode)
        
        let strechableLayerViewCode = """
        guard let stretchableImage = UIImage(named: "rect") else { return }

        stretchableLayerView.layer.contents = stretchableImage.cgImage
        stretchableLayerView.layer.contentsScale = UIScreen.main.scale
        stretchableLayerView.layer.contentsCenter = CGRect(
            x: 8.0/stretchableImage.size.width,
            y: 8.0/stretchableImage.size.height,
            width: 1-2*(8.0/stretchableImage.size.width),
            height: 1-2*(8.0/stretchableImage.size.height))
        """
        strechableLayerViewTV.displayCode(code: strechableLayerViewCode)
        
        let layerViewCode = """
        let image = UIImage(named: "run")
        self.layerView.layer.contents = image?.cgImage
        self.layerView.layer.contentsGravity = .center
        self.layerView.layer.contentsScale = UIScreen.main.scale
        self.layerView.clipsToBounds = true
        """
        layerViewTV.displayCode(code: layerViewCode)
        
        
    }


}
