//
//  ThreeDotLoader.swift
//  Three Dots Jumping
//
//  Created by Manoj kumar on 14/02/23.
//

import UIKit

class ThreeDotLoader: UIView {
    
    private let dotSize: CGFloat = 10.0
    private let dotSpacing: CGFloat = 5.0
    private let animationDuration: TimeInterval = 0.5
    
    private var dot1: UIView!
    private var dot2: UIView!
    private var dot3: UIView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }
    
    private func setupView() {
        dot1 = UIView(frame: CGRect(x: 0, y: 0, width: dotSize, height: dotSize))
        dot1.backgroundColor = tintColor
        dot1.layer.cornerRadius = dotSize / 2.0
        addSubview(dot1)
        
        dot2 = UIView(frame: CGRect(x: dotSize + dotSpacing, y: 0, width: dotSize, height: dotSize))
        dot2.backgroundColor = tintColor
        dot2.layer.cornerRadius = dotSize / 2.0
        addSubview(dot2)
        
        dot3 = UIView(frame: CGRect(x: 2 * (dotSize + dotSpacing), y: 0, width: dotSize, height: dotSize))
        dot3.backgroundColor = tintColor
        dot3.layer.cornerRadius = dotSize / 2.0
        addSubview(dot3)
        
        
        
        startAnimation()
    }
    
    private func startAnimation() {
        let animation1 = CABasicAnimation(keyPath: "transform.scale")
        animation1.fromValue = 1.0
        animation1.toValue = 1.5
        animation1.duration = animationDuration
        animation1.timingFunction = CAMediaTimingFunction(name: .easeInEaseOut)
        animation1.autoreverses = true
        animation1.repeatCount = .infinity
        dot1.layer.add(animation1, forKey: "dot1")
        
        let animation2 = CABasicAnimation(keyPath: "transform.scale")
        animation2.fromValue = 1.0
        animation2.toValue = 1.5
        animation2.duration = animationDuration
        animation2.timingFunction = CAMediaTimingFunction(name: .easeInEaseOut)
        animation2.autoreverses = true
        animation2.repeatCount = .infinity
        animation2.beginTime = CACurrentMediaTime() + animationDuration / 3.0
        dot2.layer.add(animation2, forKey: "dot2")
        
        let animation3 = CABasicAnimation(keyPath: "transform.scale")
        animation3.fromValue = 1.0
        animation3.toValue = 1.5
        animation3.duration = animationDuration
        animation3.timingFunction = CAMediaTimingFunction(name: .easeInEaseOut)
        animation3.autoreverses = true
        animation3.repeatCount = .infinity
        animation3.beginTime = CACurrentMediaTime() + 2 * animationDuration / 3.0
        dot3.layer.add(animation3, forKey: "dot3")
    }
}



