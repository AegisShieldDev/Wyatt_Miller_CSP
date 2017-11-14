//
//  ViewController3.swift
//  Wyatt_Miller_CSP
//
//  Created by Miller, Wyatt on 10/26/17.
//  Copyright © 2017 Miller, Wyatt. All rights reserved.
//
// Global impact

import UIKit

public class GlobalImpactViewController: UIViewController {
    
    
    @IBOutlet weak var ImpactPhoto: UIImageView!
    @IBOutlet weak var ImpactLabel: UILabel!
    @IBOutlet weak var ImpactLabel2: UILabel!
    @IBOutlet weak var ImpactLabel3: UILabel!
    
    override public func viewDidLoad() {
        super.viewDidLoad()

        ImpactPhoto.image = UIImage(named: "Notes")
        ImpactLabel.text = "This app would contain information about nuclear energy that is presented after a short survey on their knowledge."
        ImpactLabel2.text = "Nuclear energy when handled properly is much cleaner then many other forms of energy generation, the public needs to understand its benefits."
        ImpactLabel3.text = "I live in the world that is pressed with issues about energy generation. This doesnt have to be one of them."
        
    }

    override public func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
