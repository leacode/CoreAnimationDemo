//
//  TransformDemoViewController.swift
//  CoreAnimationDemo
//
//  Created by leacode on 2018/8/3.
//  Copyright © 2018 leacode. All rights reserved.
//

import UIKit

class TransformDemoViewController: UITableViewController {

    @IBOutlet weak var rotateImageView0: UIImageView!
    @IBOutlet weak var rotateImageView0TV: UITextView!
    @IBOutlet weak var rotateImageView1: UIImageView!
    @IBOutlet weak var rotateImageView1TV: UITextView!
    @IBOutlet weak var rotateImageView2: UIImageView!
    @IBOutlet weak var rotateImageView2TV: UITextView!
    
    @IBOutlet weak var scaleImageView1: UIImageView!
    @IBOutlet weak var scaleImageView1TV: UITextView!
    @IBOutlet weak var scaleImageView2: UIImageView!
    @IBOutlet weak var scaleImageView2TV: UITextView!
    
    @IBOutlet weak var transformXYImageView0: UIImageView!
    @IBOutlet weak var transformXYImageView0TV: UITextView!
    @IBOutlet weak var transformXYImageView1: UIImageView!
    @IBOutlet weak var transformXYImageView1TV: UITextView!
    @IBOutlet weak var transformXYImageView2: UIImageView!
    @IBOutlet weak var transformXYImageView2TV: UITextView!
    
    @IBOutlet weak var combinationImageView: UIImageView!
    @IBOutlet weak var combinationImageViewTV: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        rotateImageView0.transform = CGAffineTransform.identity
        rotateImageView1.transform = CGAffineTransform(rotationAngle: 45.0)
        rotateImageView2.transform = CGAffineTransform(translationX: 45, y: 0)
        
        scaleImageView1.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)
        scaleImageView2.transform = CGAffineTransform(scaleX: 0.5, y: 0.7)

        transformXYImageView0.transform = CGAffineTransform(translationX: 30, y: 0)
        transformXYImageView1.transform = CGAffineTransform(translationX: 0, y: 30)
        transformXYImageView2.transform = CGAffineTransform(translationX: 30, y: 30)
        
        let xScale: CGFloat = 0.5
        let yScale: CGFloat = 0.5
        let theta: CGFloat = 45.0
        let tx: CGFloat = 30
        let ty: CGFloat = 30
        
        let transform = CGAffineTransform.makeTransform(xScale: xScale,
                                yScale: yScale,
                                theta: theta,
                                tx: tx,
                                ty: ty)

        combinationImageView.transform = transform
        
        displayCode()
    }

    private func displayCode() {
        
        let rotateImageView0Code = """
        rotateImageView0.transform = CGAffineTransform.identity
        """
        rotateImageView0TV.displayCode(code: rotateImageView0Code)
        
        let rotateImageView1Code = """
        rotateImageView1.transform = CGAffineTransform(rotationAngle: 45.0)
        """
        rotateImageView1TV.displayCode(code: rotateImageView1Code)
        
        let rotateImageView2Code = """
        rotateImageView2.transform = CGAffineTransform(translationX: 45, y: 0)
        """
        rotateImageView2TV.displayCode(code: rotateImageView2Code)
        
        let scaleImageView1Code = """
        scaleImageView1.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)
        """
        scaleImageView1TV.displayCode(code: scaleImageView1Code)

        let scaleImageView2Code = """
        scaleImageView1.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)
        """
        scaleImageView2TV.displayCode(code: scaleImageView2Code)
        
        let transformXYImageView0Code = """
        transformXYImageView0.transform = CGAffineTransform(translationX: 30, y: 0)
        """
        transformXYImageView0TV.displayCode(code: transformXYImageView0Code)
        
        let transformXYImageView1Code = """
        transformXYImageView1.transform = CGAffineTransform(translationX: 0, y: 30)
        """
        transformXYImageView1TV.displayCode(code: transformXYImageView1Code)
        
        let transformXYImageView2Code = """
        transformXYImageView2.transform = CGAffineTransform(translationX: 30, y: 30)
        """
        transformXYImageView2TV.displayCode(code: transformXYImageView2Code)
        
        let combinationImageViewCode = """

        let xScale: CGFloat = 0.5
        let yScale: CGFloat = 0.5
        let theta: CGFloat = 45.0
        let tx: CGFloat = 30
        let ty: CGFloat = 30
        
        let transform = CGAffineTransform.makeTransform(xScale: xScale,
                                yScale: yScale,
                                theta: theta,
                                tx: tx,
                                ty: ty)

        combinationImageView.transform = transform

        """
        
        combinationImageViewTV.displayCode(code: combinationImageViewCode)
        
        
    }
    
    

}
