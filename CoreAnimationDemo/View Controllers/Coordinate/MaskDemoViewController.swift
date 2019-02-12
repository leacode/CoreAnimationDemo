//
//  MaskDemoViewController.swift
//  CoreAnimationDemo
//
//  Created by leacode on 2018/8/2.
//  Copyright © 2018 leacode. All rights reserved.
//

import UIKit

class MaskDemoViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let maskLayer = CALayer()
        let maskImage = UIImage(named: "mask_icon")
        maskLayer.frame = CGRect(x: imageView.frame.size.width / 2 - maskImage!.size.width / 2,
                                 y: imageView.frame.size.height / 2 - maskImage!.size.height / 2,
                                 width: maskImage!.size.width,
                                 height: maskImage!.size.height)
        maskLayer.contents = maskImage?.cgImage
        imageView.layer.mask = maskLayer

        
        displayCode()
        
    }
    
    private func displayCode() {
        
        let code = """
        let maskLayer = CALayer()
        let maskImage = UIImage(named: "mask_icon")
        maskLayer.frame = CGRect(x: imageView.frame.size.width / 2 - maskImage!.size.width / 2,
                                 y: imageView.frame.size.height / 2 - maskImage!.size.height / 2,
                                 width: maskImage!.size.width,
                                 height: maskImage!.size.height)
        maskLayer.contents = maskImage?.cgImage
        imageView.layer.mask = maskLayer
        """
        
        textView.displayCode(code: code)
    }

}
