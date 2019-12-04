//
//  Pet.swift
//  Pet Project
//
//  Created by Fabbio on 04/12/2019.
//  Copyright © 2019 Fabbio. All rights reserved.
//

import Foundation
import SpriteKit

class Pet {
    var petView = SKSpriteNode(imageNamed: "first")
    var health = 0
    var size = sizes.s
    var position = CGPoint(x: 0, y: 0)
    
    enum sizes {
        case s
        case m
        case l
        case xl
    }
    func checkSize() {
        if size == sizes.s {
            print("small")
        } else if size == sizes.m {
            print("medium")
        } else if size == sizes.l {
            print("large")
        } else if size == sizes.xl {
            print("extra large")
        }
    }
}
