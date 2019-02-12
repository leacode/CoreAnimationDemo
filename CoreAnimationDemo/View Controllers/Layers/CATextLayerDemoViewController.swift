//
//  CATextLayerViewController.swift
//  CoreAnimationDemo
//
//  Created by leacode on 2019/1/13.
//  Copyright © 2019 leacode. All rights reserved.
//

import UIKit

class CATextLayerDemoViewController: UIViewController {
    
    @IBOutlet weak var labelView: UIView!
    
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // create a text layer
        let textLayer = CATextLayer()
        textLayer.frame = self.labelView.bounds
        self.labelView.layer.addSublayer(textLayer)
        
        // set text attributes
        textLayer.foregroundColor = UIColor.black.cgColor
        textLayer.alignmentMode = CATextLayerAlignmentMode.justified
        textLayer.isWrapped = true
        
        // choose a font
        let font = UIFont.systemFont(ofSize: 12)
        
        // set layer font
        let fontName = font.fontName as CFString
        let fontRef = CGFont(fontName)
        textLayer.font = fontRef
        textLayer.fontSize = font.pointSize
        
        // choose some text
        let text = """
        君不见，黄河之水天上来，奔流到海不复回。
        君不见，高堂明镜悲白发，朝如青丝暮成雪。
        人生得意须尽欢，莫使金樽空对月。
        天生我材必有用，千金散尽还复来。
        烹羊宰牛且为乐，会须一饮三百杯。
        岑夫子，丹丘生，将进酒，杯莫停。
        与君歌一曲，请君为我倾耳听。
        钟鼓馔玉不足贵，但愿长醉不复醒。
        古来圣贤皆寂寞，惟有饮者留其名。
        陈王昔时宴平乐，斗酒十千恣欢谑。
        主人何为言少钱，径须沽取对君酌。
        五花马，千金裘，呼儿将出换美酒，与尔同销万古愁
        """
        
        // set layer text
        textLayer.string = text
        
        textLayer.contentsScale = UIScreen.main.scale

        displayCode()
    }
    

    private func displayCode() {
        
        let code = """

        // create a text layer
        let textLayer = CATextLayer()
        textLayer.frame = self.labelView.bounds
        self.labelView.layer.addSublayer(textLayer)
        
        // set text attributes
        textLayer.foregroundColor = UIColor.black.cgColor
        textLayer.alignmentMode = CATextLayerAlignmentMode.justified
        textLayer.isWrapped = true
        
        // choose a font
        let font = UIFont.systemFont(ofSize: 12)
        
        // set layer font
        let fontName = font.fontName as CFString
        let fontRef = CGFont(fontName)
        textLayer.font = fontRef
        textLayer.fontSize = font.pointSize
        
        // choose some text
        let text = "..."
        
        // set layer text
        textLayer.string = text
        
        textLayer.contentsScale = UIScreen.main.scale

        """
        
        textView.displayCode(code: code)
        
    }

}
