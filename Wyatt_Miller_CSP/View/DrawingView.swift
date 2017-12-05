//
//  DrawingView.swift
//  Wyatt_Miller_CSP
//
//  Created by Miller, Wyatt on 12/5/17.
//  Copyright © 2017 Miller, Wyatt. All rights reserved.
//

import UIKit

class DrawingView: UIView {

    override public func draw (_ rect: CGRect)
    {
        drawStickFigure().stroke()
        drawTurtle()
        drawChoco()
    }
    
    private func drawChoco() -> Void
    {
        let choco = UIBezierPath()
        
        choco.move(to: CGPoint(x: 50, y: 50))
        choco.addLine(to: CGPoint(x: 50, y: 100))
        choco.addLine(to: CGPoint(x: 150, y: 100))
        choco.addLine(to: CGPoint(x: 150, y: 50))
        choco.close()
        UIColor(patternImage: UIImage(named:"CT_Chocobo")!).setFill()
        UIColor.gray.setStroke()
        choco.lineWidth = 2.0
        choco.fill()
        choco.stroke()
        
        let hay = UIBezierPath()
        
        UIColor.yellow.setFill()
        hay.move(to: CGPoint(x: 50, y: 150))
        hay.addLine(to: CGPoint(x: 50, y: 200))
        hay.addLine(to: CGPoint(x: 150, y: 200))
        hay.addLine(to: CGPoint(x: 150, y: 150))
        hay.close()
        hay.stroke()
    }
    
    private func drawStickFigure() -> UIBezierPath
    {
        let stickFigure = UIBezierPath()
        
        UIColor.cyan.setStroke()
        stickFigure.lineWidth = 3.0
        
        stickFigure.addArc(withCenter: CGPoint(x: 200, y: 200),
                               radius: CGFloat(20),
                               startAngle: CGFloat(0),
                               endAngle: CGFloat(2) * CGFloat.pi,
                               clockwise: true)
        
        stickFigure.move(to: CGPoint(x: 200, y: 220))
        stickFigure.addLine(to: CGPoint(x: 200, y: 270))
        stickFigure.move(to: CGPoint(x: 180, y: 240))
        stickFigure.addLine(to: CGPoint(x: 220, y: 240))
        stickFigure.move(to: CGPoint(x: 200, y: 270))
        stickFigure.addLine(to: CGPoint(x: 180, y: 300))
        stickFigure.move(to: CGPoint(x: 200, y: 270))
        stickFigure.addLine(to: CGPoint(x: 220, y: 300))
        
        return stickFigure
    }
    
    private func drawTurtle() -> Void
    {
        let logo = UIBezierPath()
        UIColor.white.setFill()
        logo.move(to: CGPoint(x: 50, y: 250))
        logo.addLine(to: CGPoint(x: 100, y: 300))
        logo.addLine(to: CGPoint(x: 50, y: 350))
        logo.close()
        logo.fill()
    }

}
