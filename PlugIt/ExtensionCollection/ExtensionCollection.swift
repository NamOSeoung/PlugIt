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
