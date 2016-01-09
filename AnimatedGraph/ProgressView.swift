//
//  ProgressView.swift
//  AnimatedGraph
//
//  Created by siva kongara on 1/8/16.
//  Copyright © 2016 siva kongara. All rights reserved.
//
import Foundation
import UIKit

class ProgressView: UIView {

    var percentOnGraph: Double = 0
    
    override func drawRect(rect: CGRect) {
        backgroundColor = UIColor.clearColor()
        let xCoordinate = UIScreen.mainScreen().bounds.midX
        let yCoordinate = UIScreen.mainScreen().bounds.midY
        let centerPoint = CGPointMake(xCoordinate, yCoordinate)
        
        let berzier1 = UIBezierPath()
        berzier1.addArcWithCenter(centerPoint, radius: CGFloat(50), startAngle: CGFloat(M_PI * 0.5) * -1, endAngle: CGFloat(M_PI * 0.5 * (3 * percentOnGraph - 1)), clockwise: true)
        berzier1.lineWidth = 10
        let color1 = UIColor(red: 89/255, green: 177/255, blue: 48/255, alpha: 1.0)
        color1.setStroke()
        berzier1.stroke()
        
        let berzier2 = UIBezierPath()
        berzier2.addArcWithCenter(centerPoint, radius: CGFloat(30), startAngle: CGFloat(M_PI * 0.5), endAngle: CGFloat(M_PI * (0.5 - percentOnGraph)) , clockwise: false)
        berzier2.lineWidth = 10
        let color2 = UIColor(red: 28/255, green: 117/255, blue: 45/255, alpha: 1.0)
        color2.setStroke()
        berzier2.stroke()
        
        let berzier3 = UIBezierPath()
        berzier3.addArcWithCenter(centerPoint, radius: CGFloat(10), startAngle: CGFloat(M_PI * 0), endAngle: CGFloat(M_PI * (percentOnGraph)) , clockwise: true)
        berzier3.lineWidth = 10
        let color3 = UIColor(red: 172/255, green: 220/255, blue: 140/255, alpha: 1.0)
        color3.setStroke()
        berzier3.stroke()
        setNeedsDisplay()
    }

}