//
//  wage.swift
//  window-shopper
//
//  Created by clicklabs on 24/05/20.
//  Copyright © 2020 clicklabs. All rights reserved.
//

import Foundation

class Wage{
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price/wage));
    }
}
