//
//  Model.swift
//  AnimationWitchSpring
//
//  Created by albik on 11.11.2022.
//

import Foundation
import SpringAnimation

struct Animation {
    let prest: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    var presetLabel: String {
        "Preset: \(prest)"
    }
    var curveLabel: String {
        "Curve: \(curve)"
    }
    var forceLabel: String {
        "Force: \(String(format: "%.2f", force))"
    }
    var durationLabel: String {
        "Duration: \(String(format: "%.2f", duration))"
    }
    var delayLabel: String {
        "Delay: \(String(format: "%.2f", delay))"
    }
    
    static func getRandomAnimation() -> Animation {
        Animation(
            prest: AnimationPreset.allCases.randomElement()!.rawValue,
            curve: AnimationCurve.allCases.randomElement()!.rawValue,
            force: Double.random(in: 0.00..<1.99),
            duration: Double.random(in: 0.00..<1.99),
            delay: Double.random(in: 0.00..<1.99))
    }
}
