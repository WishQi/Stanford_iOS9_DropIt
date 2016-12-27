//
//  NamedBezierPathsView.swift
//  Stanford_iOS9_DropIt
//
//  Created by 李茂琦 on 27/12/2016.
//  Copyright © 2016 李茂琦. All rights reserved.
//

import UIKit

class NamedBezierPathsView: UIView {

    var bezierPaths = [String: UIBezierPath]() { didSet{ setNeedsDisplay() } }
    
    override func draw(_ rect: CGRect) {
        for (_, path) in bezierPaths {
            path.stroke()
        }
    }

}
