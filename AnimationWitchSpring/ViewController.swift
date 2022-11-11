//
//  ViewController.swift
//  AnimationWitchSpring
//
//  Created by albik on 11.11.2022.
//

import UIKit
import SpringAnimation

final class ViewController: UIViewController {
    
    @IBOutlet var springAnimationView: SpringView!
    
    @IBOutlet var presetLabel: UILabel! {
        didSet{
            presetLabel.text = animation.presetLabel
        }
    }
    @IBOutlet var curveLabel: UILabel! {
        didSet{
            curveLabel.text = animation.curveLabel
        }
    }
    @IBOutlet var forceLabel: UILabel! {
        didSet{
            forceLabel.text = animation.curveLabel
        }
    }
    @IBOutlet var durationLabel: UILabel! {
        didSet{
            durationLabel.text = animation.durationLabel
        }
    }
    @IBOutlet var delayLabel: UILabel! {
        didSet{
            durationLabel.text = animation.delayLabel
        }
    }
    
    
    private var animation = Animation.getRandomAnimation()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
//        presetLabel.text = ("Preset: \(animationPreset)")
//        curveLabel.text = ("Curve: \(animationCurve)")
//        forceLabel.text = ("Force: \(String(format: "%.2f", forceAnimation))")
//        durationLabel.text = ("Duration: \(String(format: "%.2f", durationAnimation))")
//        delayLabel.text = ("Delay: \(String(format: "%.2f", delayAnimation))")
        
    }

  
    @IBAction func runSpringAnimationButton(_ sender: SpringButton) {
        
        presetLabel.text = animation.presetLabel
        springAnimationView.animation = animation.prest
        springAnimationView.animate()
        
        animation = Animation.getRandomAnimation()
        
//        presetLabel.text = AnimationPreset.allCases.randomElement()!.rawValue
        sender.setTitle("\(animation.prest)", for: .normal)
//        springAnimationView.animation = presetLabel.text!
//
//        springAnimationView.animate()
//
//        springAnimationView.animation = presetLabel.text!
//        springAnimationView.curve = curveLabel.text!
//        springAnimationView.force = forceAnimation
//        springAnimationView.duration = durationAnimation
//        springAnimationView.delay = delayAnimation
//        springAnimationView.animate()
        
//        getRandomSpringAnimation()
        
//        let animationPreset = AnimationPreset.allCases.randomElement()!.rawValue
//        springAnimationView.animation = animationPreset
//        springAnimationView.animate()
        
    }
    
    private func getRandomSpringAnimation() {
        
        guard let animationPreset = AnimationPreset.allCases.randomElement()?.rawValue else { return }
        presetLabel.text = animationPreset
        
//        let animationCurve = AnimationCurve.allCases.randomElement()!.rawValue
//        let forceAnimation = Double.random(in: 0.00..<2)
//        let durationAnimation = Double.random(in: 0.00..<2)
//        let delayAnimation = Double.random(in: 0.00..<2)
//
//
    }
    
        
        
    

}

