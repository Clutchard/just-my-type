//
//  RacingGameViewController.swift
//  JustMyType
//
//  Created by Lauren Koulias on 11/25/16.
//  Copyright © 2016 Lauren Koulias. All rights reserved.
//


import UIKit
import SpriteKit

class RacingGameViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let scene = RacingGame(fileNamed:"RacingGame") {
            // Configure the view.
            let skView = self.view as! SKView
            skView.showsFPS = true
            skView.showsNodeCount = true
            
            /* Sprite Kit applies additional optimizations to improve rendering performance */
            skView.ignoresSiblingOrder = true
            
            /* Set the scale mode to scale to fit the window */
            scene.scaleMode = .aspectFill
            
            skView.presentScene(scene)
        }
    }
    
    override var shouldAutorotate : Bool {
        return true
    }
    
    override var supportedInterfaceOrientations : UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }
    
    override var prefersStatusBarHidden : Bool {
        return true
    }
}

