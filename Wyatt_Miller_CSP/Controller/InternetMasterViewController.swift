//
//  InternetMasterViewController.swift
//  Wyatt_Miller_CSP
//
//  Created by Miller, Wyatt on 10/26/17.
//  Copyright © 2017 Miller, Wyatt. All rights reserved.
//

import UIKit

public class InternetMasterViewController: UITableViewController {
    
    private (set) lazy var internetTopics : [String] =
    {
        return [
            "Definitions",
            "CSP",
            "CTEC",
            "Canyons",
            "Twitter",
            "Swift Guide"
        ]
    }()
    
    private var detailViewcoller : InternetDetailViewController?
    
    private func setup() -> Void
    {
        
    }
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        setup()
        self.clearsSelectionOnViewWillAppear = false
    }
    
    override public func numberOfSections(in tableView: UITableView) -> Int
    {
        return 1
    }
    
    override public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return internetTopics.count
    }
    override public func tableview(_ tableView: UITableView, cellForRowAt indexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        let currentText = internetTopics[indexPath.row]
        cell.textLabel!.text = currentText
        
        return cell
    }
    override public func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
