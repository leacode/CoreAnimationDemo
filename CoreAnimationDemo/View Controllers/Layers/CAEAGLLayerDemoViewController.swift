//
//  CAEAGLLayerDemoViewController.swift
//  CoreAnimationDemo
//
//  Created by leacode on 2019/1/14.
//  Copyright © 2019 leacode. All rights reserved.
//

import UIKit
import OpenGLES
import GLKit

class CAEAGLLayerDemoViewController: UIViewController {

    @IBOutlet weak var glView: UIView!
    
    var glContext: EAGLContext!
    var glLayer: CAEAGLLayer!
    var framebuffer: GLuint!
    var colorRenderbuffer: GLuint!
    var framebufferWidth: GLint!
    var framebufferHeight: GLint!
    var effect: GLKBaseEffect!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //set up frame buffer
        glGenFramebuffers(1, &framebuffer);
        glBindFramebuffer(GLenum(GL_FRAMEBUFFER), framebuffer);
        //set up color render buffer
        glGenRenderbuffers(1, &colorRenderbuffer);
        glBindRenderbuffer(GLenum(GL_RENDERBUFFER), colorRenderbuffer);
        
//        glFramebufferRenderbuffer(GL_FRAMEBUFFER, GL_COLOR_ATTACHMENT0
//            [self.glContext renderbufferStorage:GL_RENDERBUFFER fromDrawab
//                glGetRenderbufferParameteriv(GL_RENDERBUFFER, GL_RENDERBUFFER_
//                glGetRenderbufferParameteriv(GL_RENDERBUFFER, GL_RENDERBUFFER_
//                //check success
        
        
        

    }
    


}
