//
//  brick.swift
//  brick
//
//  Created by Toan on 2/17/20.
//  Copyright © 2020 Toan. All rights reserved.
//

import UIKit

class brick: UIView {
var fillcolor = UIColor()
 var  ShapeLayer = CAShapeLayer()
    var radius : CGFloat = 0.0
    convenience init (Strart :CGPoint , r :CGFloat, color :UIColor ){
        self.init(frame: CGRect(x: Strart.x+100, y: Strart.y+100, width: r*2, height: r*2))
        self.radius = r
        self.fillcolor =  color
        
    }
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        let squareLayer = CAShapeLayer()
        squareLayer.path = UIBezierPath(roundedRect: self.bounds, cornerRadius: 0).cgPath
        squareLayer.fillColor = fillcolor.cgColor
        self.layer.addSublayer(squareLayer)
        let L : CGFloat = radius*2
        let x :CGFloat = 10
         let topLayer  = CAShapeLayer()
         let path1 = UIBezierPath()
         path1.move(to: CGPoint(x: 0, y: 0))
         path1.addLine(to: CGPoint(x: L, y: 0))
         path1.addLine(to: CGPoint(x: L-x, y: x))
         path1.addLine(to: CGPoint(x: x, y: x))
         
         topLayer.path = path1.cgPath
         topLayer.fillColor = UIColor.white.cgColor
         topLayer.opacity = 0.4
         squareLayer.insertSublayer(topLayer, at: 0)
         //right
         let rightLayer = CAShapeLayer()
         let path2 = UIBezierPath()
         path2.move(to: CGPoint(x: L, y: 0))
         path2.addLine(to: CGPoint(x: L-x, y: x))
         path2.addLine(to: CGPoint(x: L-x, y: L-x))
         path2.addLine(to: CGPoint(x: L, y: L))
         
        rightLayer.path = path2.cgPath
         rightLayer.fillColor = UIColor.black.cgColor
         rightLayer.opacity = 0.3
         squareLayer.insertSublayer(rightLayer, at: 0)
         // left
         let leftLayer = CAShapeLayer()
                let path3 = UIBezierPath()
                path3.move(to: CGPoint(x: 0, y: L))
                path3.addLine(to: CGPoint(x: x, y: L-x))
                path3.addLine(to: CGPoint(x: x, y: x))
                path3.addLine(to: CGPoint(x: 0, y: 0))
                
               leftLayer.path = path3.cgPath
                leftLayer.fillColor = UIColor.black.cgColor
                leftLayer.opacity = 0.3
                squareLayer.insertSublayer(leftLayer, at: 0)
                
         // botom
        let bottomlayer = CAShapeLayer()
        let  path4 = UIBezierPath()
         path4.move(to: CGPoint(x: L, y: L))
         path4.addLine(to: CGPoint(x: 0, y: L))
         path4.addLine(to: CGPoint(x: x, y: L-x))
         path4.addLine(to: CGPoint(x: L-x, y: L-x))
         bottomlayer.path = path4.cgPath
         bottomlayer.fillColor = UIColor.black.cgColor
         bottomlayer.opacity = 0.5
         squareLayer.insertSublayer(bottomlayer, at: 0)
        
        
    }
}
