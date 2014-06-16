//
//  GameScene.swift
//  protoType20140606
//
//  Created by Fumitoshi Ogata on 2014/06/06.
//  Copyright (c) 2014年 Fumitoshi Ogata. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    var player : SKSpriteNode!
    var targetMarker : SKSpriteNode!
    
    override func didMoveToView(view: SKView) {
        let backGround = SKSpriteNode(imageNamed:"bg-space1.png")
        self.addChild(backGround)
        backGround.position = CGPointMake(500,300)
            
        self.targetMarker = SKSpriteNode(imageNamed:"marker.png")
        self.addChild(targetMarker)
        self.targetMarker.position = CGPointMake(300,300)
        
        self.player = SKSpriteNode(imageNamed:"thunderbird.png")
        self.addChild(player)
        self.player.position = CGPointMake(300,300)
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        /* Called when a touch begins */
        for touch: AnyObject in touches {
            let location = touch.locationInNode(self)
            self.targetMarker.position = location
        }
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
        
        if(self.player.position.x < self.targetMarker.position.x){
            self.player.position.x += 1;
        }else if(self.player.position.x > self.targetMarker.position.x){
            self.player.position.x -= 1;
        }
        if(self.player.position.y < self.targetMarker.position.y){
            self.player.position.y += 1;
        }else if(self.player.position.y > self.targetMarker.position.y){
            self.player.position.y -= 1;
        }
    }
}
