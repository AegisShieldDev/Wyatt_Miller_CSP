//
//  Bear.swift
//  Wyatt_Miller_CSP
//
//  Created by Miller, Wyatt on 11/20/17.
//  Copyright © 2017 Miller, Wyatt. All rights reserved.
//

import Foundation
import UIKit
public class Bear : Pokeable
{
    private var angryBear: Bool
    //MARK: Pokeable data member
    public var pokeState: Bool
    
    public init()
    {
        self.angryBear = false
        self.pokeState = false
    }
    
    //MARK:- Pokeable methods
    public func poke() -> Void
    {
        print("Yup. Its a Bear. I think you made it angry.")
        pokeState = true
    }
    
    public func isPoked() -> Bool
    {
        if(pokeState)
        {
            print("Angry. Very angry. Above average bear-level angry.")
        }
        else
        {
            print("Normal Bear-level angry.")
        }
        
        return pokeState
    }
}
