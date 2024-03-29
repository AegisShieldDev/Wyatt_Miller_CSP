//
//  Player.swift
//  Sample_CSP
//
//  Created by Cody Henrichsen on 12/7/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit
import SpriteKit

public class Player: SKSpriteNode
{
    private var canFire : Bool = true

    private var invincible = false
    private var lives:Int = 3
    {
        didSet
        {
            if(lives < 0)
            {
                kill()
            }
            else
            {
                respawn()
            }
        }
    }

    
    public init()
    {
        let texture = SKTexture(imageNamed: "x wing1")
        super.init(texture: texture, color: SKColor.clear, size: texture.size())
        
        self.physicsBody = SKPhysicsBody(texture: self.texture!, size: self.size)
        self.physicsBody?.isDynamic = true
        self.physicsBody?.usesPreciseCollisionDetection = false
        self.physicsBody?.categoryBitMask = CollisionCategories.Player
        self.physicsBody?.contactTestBitMask = CollisionCategories.InvaderLaser | CollisionCategories.Invader
        self.physicsBody?.collisionBitMask = CollisionCategories.EdgeBody
        self.physicsBody?.allowsRotation = false
        animate()
        
    }
    
    required public init?(coder aDecoder: NSCoder)
    {
        super.init(coder: aDecoder)
    }
    
    private func animate() -> Void
    {
        var playerTextures:[SKTexture] = []
        for i in 1...3
        {
            playerTextures.append(SKTexture(imageNamed: "x wing\(i)"))
        }
        
        let playerAcimation = SKAction.repeatForever( SKAction.animate(with: playerTextures, timePerFrame: 0.2))
        self.run(playerAcimation)
    }
    
    public func die () -> Void
    {
        if(!invincible)
        {
            lives -= 1
        }
    }
    
    public func kill() -> Void
    {
        gameLevel = 1
        
        let gameOverScene = DeathScene(size: self.scene!.size)
        gameOverScene.scaleMode = self.scene!.scaleMode
        let transitionType = SKTransition.flipHorizontal(withDuration: 1)
        self.scene!.view!.presentScene(gameOverScene,transition: transitionType)
    }
    
    public func respawn() -> Void
    {
        invincible = true
        let fadeOutAction = SKAction.fadeOut(withDuration: 0.4)
        let fadeInAction = SKAction.fadeIn(withDuration: 0.4)
        let fadeOutIn = SKAction.sequence([fadeOutAction, fadeInAction])
        let fadeOutInAction = SKAction.repeat(fadeOutIn, count: 0)
        let setInvincibleFalse = SKAction.run()
        {
            self.invincible = false
        }
        run(SKAction.sequence([fadeOutInAction,setInvincibleFalse]))
    }
    
    public func fireBullet(scene: SKScene) -> Void
    {
        if(!canFire)
        {
            return
        }
        else
        {
            canFire = false
            let bullet = PlayerLaser(imageName: "laser", bulletSound: "laser sound.mp3")
            bullet.position.x = self.position.x
            bullet.position.y = self.position.y + self.size.height / 2
            scene .addChild(bullet)
            let moveBulletAction = SKAction.move(to:CGPoint(x:self.position.x,y:scene.size.height + bullet.size.height), duration: 1.0)
            let removeBulletAction = SKAction.removeFromParent()
            bullet.run(SKAction.sequence([moveBulletAction, removeBulletAction]))
            let waitEnableFire = SKAction.wait(forDuration: 0.5)
            run(waitEnableFire,completion:
                {
                    self.canFire = true
                })
        }
    }

}
