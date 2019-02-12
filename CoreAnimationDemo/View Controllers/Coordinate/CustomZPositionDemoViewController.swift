//
//  CustomZPositionDemoViewController.swift
//  CoreAnimationDemo
//
//  Created by leacode on 2018/8/1.
//  Copyright © 2018 leacode. All rights reserved.
//

import UIKit

class CustomZPositionDemoViewController: UIViewController {
    
    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var redView: UIView!
    
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        greenView.layer.zPosition = 1.0
        
        displayCode()
    }
    
    private func displayCode() {
        
        let code = """
        greenView.layer.zPosition = 1.0
        """
        
        textView.displayCode(code: code)
    }
    

}
