//
//  ViewController.swift
//  Animations
//
//  Created by Евгений Волошенко on 12.04.2022.
//

import UIKit
import Spring

class ViewController: UIViewController {

    let animations = AnimationModel.getAnimationModels()
    var animation: AnimationModel!
    
    @IBOutlet weak var animationView: SpringView!
    
    @IBOutlet weak var typeLabel: UILabel!
    @IBOutlet weak var curveLabel: UILabel!
    @IBOutlet weak var forceLabel: UILabel!
    @IBOutlet weak var durationLabel: UILabel!
    
    @IBOutlet weak var runButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animation = animations.first
        runButton.setTitle("Run \(animation.type)", for: .normal)
    }

    @IBAction func buttonPressed(_ sender: Any) {
        
        setUpMainView()
        
        animationView.animation = animation.type
        animationView.curve = animation.curve
        animationView.force = animation.force
        animationView.duration = animation.duration
        animationView.animate()
        
        animation = animations[Int.random(in: 0..<animations.count)]
        
        runButton.setTitle("Run \(animation.type)", for: .normal)
        
    }
    
    private func setUpMainView() {
        
        typeLabel.text = animation.type
        curveLabel.text = animation.curve
        forceLabel.text = String(Float(animation.force))
        durationLabel.text = String(Float(animation.duration))
        
    }

}
