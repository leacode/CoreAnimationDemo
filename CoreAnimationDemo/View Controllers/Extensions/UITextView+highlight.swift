//
//  UITextView+highlight.swift
//  CoreAnimationDemo
//
//  Created by leacode on 2019/1/12.
//  Copyright © 2019 leacode. All rights reserved.
//

import UIKit
import Highlightr


extension UITextView {
    
    func displayCode(code: String) {
        
        let highlightr = Highlightr()
        highlightr?.setTheme(to: "xcode")
        let highlightedCode = highlightr?.highlight(code, as: "swift")
        
        self.attributedText = highlightedCode
        self.backgroundColor = highlightr?.theme.themeBackgroundColor
        self.contentOffset = CGPoint(x: 0, y: 0)
        self.font = UIFont.systemFont(ofSize: 10.0)
    }
    
    
}
