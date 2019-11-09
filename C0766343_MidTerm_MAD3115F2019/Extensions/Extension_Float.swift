//
//  Extension_Float.swift
//  C0766343_MidTerm_MAD3115F2019
//
//  Created by Simranjit Singh Johal on 2019-11-08.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
extension Float
{
    public func insertCurrency() -> String
    {
        return String.init(format: "$%0.2f", self)
    }
}
