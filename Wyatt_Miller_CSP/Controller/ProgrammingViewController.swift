//
//  ProgrammingViewController.swift
//  Wyatt_Miller_CSP
//
//  Created by Miller, Wyatt on 12/13/17.
//  Copyright © 2017 Miller, Wyatt. All rights reserved.
//

import UIKit
import SpriteKit

public class ProgrammingViewController: UIViewController
{
    override public func viewDidLoad() -> Void
    {
        super.viewDidLoad()
        let gameScene = StartScene(size: view.bounds.size)
        let gameView = view as! SKView
        
        gameView.showsFPS = true
        gameView.showsNodeCount = true
        gameView.ignoresSiblingOrder = true
        
        gameScene.scaleMode = .resizeFill
        gameView.presentScene(gameScene)
    }
}
