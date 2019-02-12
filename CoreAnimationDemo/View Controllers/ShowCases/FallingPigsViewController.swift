//
//  FallingPigsViewController.swift
//  CoreAnimationDemo
//
//  Created by leacode on 2019/2/10.
//  Copyright © 2019 leacode. All rights reserved.
//

import UIKit

class FallingPigsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
        showPigs()
    }
    
    func showPigs() {
        let emitter = Emitter.get(with: UIImage(named: "pig")!)
        
        emitter.emitterPosition = CGPoint(x: view.frame.width / 2, y: 0)
        emitter.emitterSize = CGSize(width: view.frame.width, height: 2)
        view.layer.addSublayer(emitter)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
