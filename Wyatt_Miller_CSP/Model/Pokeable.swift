//
//  Pokeable.swift
//  Wyatt_Miller_CSP
//
//  Created by Miller, Wyatt on 11/20/17.
//  Copyright © 2017 Miller, Wyatt. All rights reserved.
//

import Foundation
public protocol Pokeable
{
    var pokeState : Bool {get set}
    func poke() -> Void
    func isPoked() -> Bool
}
