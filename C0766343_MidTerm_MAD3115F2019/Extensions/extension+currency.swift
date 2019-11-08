//
//  extension+currency.swift
//  C0766343_MidTerm_MAD3115F2019
//
//  Created by MacStudent on 2019-11-08.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
extension Float{
    func currencyFormat() -> String
    {
        return String(format: "$%0.2f", Float(self))
    }
    
    
}
