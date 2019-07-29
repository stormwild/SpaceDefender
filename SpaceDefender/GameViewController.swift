//
//  GameViewController.swift
//  SpaceDefender
//
//  Created by Alexander Torrijos on 29/07/2019.
//  Copyright © 2019 Alexander Torrijos. All rights reserved.
//

import UIKit
import SpriteKit
//import GameplayKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Load 'GameScene.sks' as a GKScene. This provides gameplay related content
        // including entities and graphs.
        // if let scene = GKScene(fileNamed: "GameScene")
        //if let scene = GameScene(fileNamed: "GameScene", size: CGSize(width: 1536, height: 2048)) {
            
            // Get the SKScene from the loaded GKScene
            //if let sceneNode = scene.rootNode as! GameScene? {
        
        let scene = GameScene(size: CGSize(width: 1536, height: 2048))
        
            // Set the scale mode to scale to fit the window
            scene.scaleMode = .aspectFill
                
                // Present the scene
            let view = self.view as! SKView
                //if let view = self.view as! SKView? {
                    view.presentScene(scene)
                    
                    view.ignoresSiblingOrder = true
                    
                    view.showsFPS = true
                    view.showsNodeCount = true
                //}
            //}
        //}
    }

    override var shouldAutorotate: Bool {
        return true
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}
