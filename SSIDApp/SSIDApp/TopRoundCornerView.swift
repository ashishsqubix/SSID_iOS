
//
//  RoundCornerView.swift
//  Thumbsplit
//
//  Created by Admin on 11/02/21.
//  Copyright © 2021 Thumbsplit. All rights reserved.
//


import UIKit

final class TopRoundCornerView : UIView {

    private var shadowLayer: CAShapeLayer!

    override func layoutSubviews() {
        super.layoutSubviews()
        if shadowLayer == nil {
            shadowLayer = CAShapeLayer()
            let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: [.topRight,.topLeft], cornerRadii: CGSize(width: 25, height: 25))
            shadowLayer.path = path.cgPath
            shadowLayer.fillColor = UIColor.white.cgColor
            layer.mask = shadowLayer
//            layer.insertSublayer(shadowLayer, at: 0)
        }
    }

}
