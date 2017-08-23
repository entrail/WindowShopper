//
//  Wage.swift
//  WindowShopper
//
//  Created by Adrian horstmann on 23.08.17.
//  Copyright © 2017 Adrian Horstmann. All rights reserved.
//

import Foundation

class Wage {
    class func getHours(forWage wage:Double, andPrice price:Double) -> Int {
        //ceil always rounds up, to ensure you always get a Int (always round up to ensure you have enough mondey for the purchase)
        return Int(ceil(price / wage)
)    }
}
