//
//  ViewController4.swift
//  Wyatt_Miller_CSP
//
//  Created by Miller, Wyatt on 10/26/17.
//  Copyright © 2017 Miller, Wyatt. All rights reserved.
//
//Astracton

import UIKit

public class ViewController4: UIViewController {

    public class AbstractionViewController: UIPageViewController, UIPageViewControllerDataSource
    {
        private (set) lazy var orderedAbstractionViews : [UIViewController] =
        {
            return [
                self.newAbstractionViewController(abstractionLevel: "Block"),
                self.newAbstractionViewController(abstractionLevel: "Java"),
                self.newAbstractionViewController(abstractionLevel: "ByteCode"),
                self.newAbstractionViewController(abstractionLevel: "Binary"),
                self.newAbstractionViewController(abstractionLevel: "AndGate"),
        ]
        }()
    
    private func newAbstractionViewController(abstractionLevel: String) -> UIViewController
    {
        return UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "\(abstractionLevel)ViewController")
    }
        
        override public func viewDidLoad()
        {
            super.viewDidLoad()
            dataSource = self
            
            if let firstViewController = orderedAbstractionViews.first
            {
                setViewControllers([firstViewController], direction: .forward, animated: true, completion: nil)
            }
        }

    public func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore
        viewController: UIViewController) -> UIViewController?
    {
        guard let viewControllerIndex = orderedAbstractionViews.index(of: viewController)
        else
        {
            return nil
        }
        
        let previousIndex = viewControllerIndex - 1
        
        guard previousIndex >= 0
        else
        {
            return orderedAbstractionViews.last
        }
        
        guard orderedAbstractionViews.count > previousIndex
        else
        {
            return nil
        }
        
        return orderedAbstractionViews[previousIndex]
    }
        
        public func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter
            viewController: UIViewController) -> UIViewController?
        {
            guard let viewControllerIndex = orderedAbstractionViews.index(of: viewController)
                else
            {
                return nil
            }
            
            let nextIndex = viewControllerIndex - 1
            
            guard nextIndex >= 0
                else
            {
                return orderedAbstractionViews.first
            }
            
            guard orderedAbstractionViews.count > nextIndex
                else
            {
                return nil
            }
            
            return orderedAbstractionViews[nextIndex]
        }

}
