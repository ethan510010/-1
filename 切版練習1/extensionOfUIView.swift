//
//  extensionOfUIView.swift
//  切版練習1
//
//  Created by EthanLin on 2018/3/6.
//  Copyright © 2018年 EthanLin. All rights reserved.
//

import Foundation
import UIKit

protocol CornerRadius {
    func makeBorderWithCornerRadius(radius: CGFloat, borderColor: UIColor, borderWidth: CGFloat)
}

extension UIView: CornerRadius {
    
    func makeBorderWithCornerRadius(radius: CGFloat, borderColor: UIColor, borderWidth: CGFloat) {
        let rect = self.bounds;
        
        let maskPath = UIBezierPath(roundedRect: rect, byRoundingCorners: .allCorners, cornerRadii: CGSize(width: radius, height: radius))
        
        // Create the shape layer and set its path
        let maskLayer = CAShapeLayer()
        maskLayer.frame = rect
        maskLayer.path  = maskPath.cgPath
        
        // Set the newly created shape layer as the mask for the view's layer
        self.layer.mask = maskLayer
        
        //Create path for border
        let borderPath = UIBezierPath(roundedRect: rect, byRoundingCorners: .allCorners, cornerRadii: CGSize(width: radius, height: radius))
        
        // Create the shape layer and set its path
        let borderLayer = CAShapeLayer()
        
        borderLayer.frame       = rect
        borderLayer.path        = borderPath.cgPath
        borderLayer.strokeColor = borderColor.cgColor
        borderLayer.fillColor   = UIColor.clear.cgColor
        borderLayer.lineWidth   = borderWidth * UIScreen.main.scale
        
        //Add this layer to give border.
        self.layer.addSublayer(borderLayer)
    }
    
}
