//
//  InternetDetailViewController.swift
//  Wyatt_Miller_CSP
//
//  Created by Miller, Wyatt on 11/29/17.
//  Copyright © 2017 Miller, Wyatt. All rights reserved.
//

import UIKit
import WebKit

public class InternetDetailViewController : UIViewController
{
    @IBOutlet weak var textView: UILabel!
    @IBOutlet weak var webViewer: WKWebView!
    
    override public func viewDidLoad()
    {
        super.viewDidLoad()
        setup()
    }
    
    private func setup() -> Void
    {
        
    }
}
