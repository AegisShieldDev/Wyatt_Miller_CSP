//
//  ViewController2.swift
//  Wyatt_Miller_CSP
//
//  Created by Miller, Wyatt on 10/26/17.
//  Copyright © 2017 Miller, Wyatt. All rights reserved.
//
// Algoritms controller

import UIKit

public class ViewController2: UIViewController {

    @IBOutlet weak var algorithmText: UILabel!
    private func setupAlgoritm() -> Void
    {
        var algorithmSteps : [String] = []
        
        //TODO: Define alorithm and all steps
        let algorithm :String = "These are the instructions to create a project iava usng eclipse and github \n"
        let stepOne   :String = "First, Open Eclipse"
        let stepTwo   :String = "Second, Make a new java project"
        let stepThree :String = "Third, Add packages to java class"
        let stepFour  :String = "Fourth, Put runner class and controller into package"
        let stepFive  :String = "Fifth, Put a view controller into view package"
        let stepSix   :String = "Sixth, Build out basic functions of the required classes"
        let stepSeven :String = "Seventh, Save and enter github"
        let stepEight :String = "Eighth, Create a repository"
        let stepNine  :String = "Nineth, update .gitignore"
        let stepTen   :String = "Lastly, Save and commit"
        
        //TODO: Finish adding all steps to the algorithm
        algorithmSteps = [stepOne, stepTwo, stepThree, stepFour, stepFive, stepSix, stepSeven, stepEight, stepNine, stepTen]
        
        let attibutesDirectory = [NSAttributedStringKey.font : algorithmText.font]
        let fullAttributedString = NSMutableAttributedString(string: algorithm, attributes: attibutesDirectory)
        
        for step in algorithmSteps
        {
            let bullet :String = "-"
            let formattedStep :String = "\n\(bullet) \(step)"
            let attributedStringStep : NSMutableAttributedString = NSMutableAttributedString(string: formattedStep)
            let paragraphStyle = createParagraphStyle()
            
            attributedStringStep.addAttributes([NSAttributedStringKey.paragraphStyle : paragraphStyle], range: NSMakeRange(0, attributedStringStep.length))
            
            fullAttributedString.append(attributedStringStep)
        }
        
        algorithmText.attributedText = fullAttributedString
    }
    
    private func createParagraphStyle() -> NSParagraphStyle
    {
        let paragraphStyle: NSMutableParagraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = .left
        paragraphStyle.defaultTabInterval = 15
        paragraphStyle.firstLineHeadIndent = 20
        paragraphStyle.headIndent = 35
        
        return paragraphStyle
    }
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        setupAlgoritm()
    }

    override public func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
