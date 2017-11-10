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
    
    override public func viewDidLoad() {
        super.viewDidLoad()

        ImpactPhoto.image = UIImage(named: "Notes")
    }

    override public func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
