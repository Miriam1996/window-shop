//
//  Wage.swift
//  window-shopper
//
//  Created by Test on 3/11/19.
//  Copyright © 2019 miriam schnoll. All rights reserved.
//

import Foundation
class Wage{
    class func  getHours(forWage wage: Double, andPrice price: Double ) ->Int{
        return Int(ceil(price/wage))
    }
}
