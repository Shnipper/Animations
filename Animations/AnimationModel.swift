//
//  AnimationModel.swift
//  Animations
//
//  Created by Евгений Волошенко on 13.04.2022.
//

import Foundation
import Spring

struct AnimationModel {
    
    let type: String
    let curve: String
    let force: CGFloat
    let duration: CGFloat
    
    static func getAnimationModels() -> [AnimationModel] {
        [AnimationModel(type: "morph",
                        curve: "spring",
                        force: 0.5,
                        duration: 2),
         
        AnimationModel(type: "shake",
                       curve: "linear",
                       force: 0.7,
                       duration: 1.5),
     
        AnimationModel(type: "squeezeLeft",
                       curve: "easeIn",
                       force: 1,
                       duration: 1),
     
        AnimationModel(type: "flash",
                       curve: "easeOut",
                       force: 1.2,
                       duration: 0.7),
     
        AnimationModel(type: "zoomIn",
                       curve: "easeInOut",
                       force: 1.5,
                       duration: 1.6)]
    }
    
}
