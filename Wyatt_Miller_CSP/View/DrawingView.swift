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
        //drawStickFigure().stroke()
        

    
        drawRed()
        drawYellow()
        drawOrange()
        drawWhite()
        drawGrey()
        drawBlack()
    }
    
    private func drawRed() -> Void
    {
        let red = UIBezierPath()
        
        UIColor.red.setFill()
        red.move(to: CGPoint(x: 0, y: 0))
        red.addLine(to: CGPoint(x: 0, y: 150))
        red.addLine(to: CGPoint(x: 350, y: 0))
        red.close()
        //UIColor(patternImage: UIImage(named:"CT_Chocobo")!).setFill()
        red.lineWidth = 2.0
        red.fill()
        red.stroke()
    }
    private func drawYellow() -> Void
    {
        
        let yellow = UIBezierPath()
        
        UIColor.yellow.setFill()
        yellow.move(to: CGPoint(x: 0, y: 150))
        yellow.addLine(to: CGPoint(x: 350, y: 0))
        yellow.addLine(to: CGPoint(x: 350, y: 150))
        yellow.addLine(to: CGPoint(x: 0, y: 300))
        yellow.close()
        yellow.lineWidth = 2.0
        yellow.stroke()
        yellow.fill()
        
    }
    private func drawOrange() -> Void
    {
        let orange = UIBezierPath()
        
        UIColor.orange.setFill()
        orange.move(to: CGPoint(x: 0, y: 300))
        orange.addLine(to: CGPoint(x: 350, y: 0))
        orange.addLine(to: CGPoint(x: 350, y: 400))
        orange.addLine(to: CGPoint(x: 0, y: 500))
        orange.close()
        orange.lineWidth = 2.0
        orange.stroke()
        orange.fill()
        
        
    }
    private func drawWhite() -> Void
    {
        let white = UIBezierPath()
        UIColor.white.setFill()
        
        white.move(to: CGPoint(x: 0, y: 450))
        white.addLine(to: CGPoint(x: 350, y: 0))
        white.addLine(to: CGPoint(x: 350, y: 450))
        white.addLine(to: CGPoint(x: 0, y: 550))
        white.close()
        white.lineWidth = 2.0
        white.stroke()
        white.fill()
    }
    private func drawGrey() -> Void
    {
        let grey = UIBezierPath()
        
        UIColor.gray.setFill()
        grey.move(to: CGPoint(x: 0, y: 650))
        grey.addLine(to: CGPoint(x: 350, y: 0))
        grey.addLine(to: CGPoint(x: 350, y: 450))
        grey.addLine(to: CGPoint(x: 0, y: 550))
        grey.close()
        grey.lineWidth = 2.0
        grey.stroke()
        grey.fill()
    }
    private func drawBlack() -> Void
    {
        
        let black = UIBezierPath()
        
        UIColor.black.setFill()
        black.move(to: CGPoint(x: 0, y: 800))
        black.addLine(to: CGPoint(x: 350, y: 0))
        black.addLine(to: CGPoint(x: 350, y: 600))
        black.addLine(to: CGPoint(x: 0, y: 700))
        black.close()
        black.lineWidth = 2.0
        black.stroke()
        black.fill()
        
    }
    
    

}
