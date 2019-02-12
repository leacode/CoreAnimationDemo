//
//  CAPlayerLayerDemoViewController.swift
//  CoreAnimationDemo
//
//  Created by leacode on 2019/1/14.
//  Copyright © 2019 leacode. All rights reserved.
//

import UIKit
import AVKit

class CAPlayerLayerDemoViewController: UIViewController {
    
    @IBOutlet weak var containerView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()

        //get video URL
        guard let URL = Bundle.main.url(forResource: "Ship", withExtension: "mp4") else { return }
        
        // create player and player layer
        let player = AVPlayer(url: URL)
        let playerLayer = AVPlayerLayer(player: player)
        
        // set player layer frame and attach it to our view
        playerLayer.frame = self.containerView.bounds
        self.containerView.layer.addSublayer(playerLayer)
        
        // transform layer
        var transform = CATransform3DIdentity
        transform.m34 = -1 / 500.0
        transform = CATransform3DRotate(transform, CGFloat.pi / 4, 1, 1, 0)
        playerLayer.transform = transform
        
        // add round coners and border
        playerLayer.masksToBounds = true
        playerLayer.cornerRadius = 20.0
        playerLayer.borderColor = UIColor.red.cgColor
        playerLayer.borderWidth = 5.0
        
        // play the video
        player.play()
    }
    

    

}
