//
//  ExtensionCollection.swift
//  PlugIt
//
//  Created by 남오승 on 2020/09/23.
//

import UIKit

extension UIView {
    
    //테두리 애니메이션
    func animateBorderWidth(boderWidth: CGFloat, duration: Double, boderColor:CGColor) {
        let animation:CABasicAnimation = CABasicAnimation(keyPath: "borderWidth")
        animation.fromValue = layer.borderWidth
        animation.toValue = boderWidth
        animation.duration = duration
        layer.add(animation, forKey: "Width")
        layer.borderWidth = boderWidth
        layer.borderColor = boderColor
    }
}

extension UIButton {
    func setBackgroundColor(_ color: UIColor, for state: UIControl.State) {
        UIGraphicsBeginImageContext(CGSize(width: 1.0, height: 1.0))
        guard let context = UIGraphicsGetCurrentContext() else { return }
        context.setFillColor(color.cgColor)
        context.fill(CGRect(x: 0.0, y: 0.0, width: 1.0, height: 1.0))
        
        let backgroundImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
         
        self.setBackgroundImage(backgroundImage, for: state)
    }
}
