//
//  Hydro.swift
//  C0766343_MidTerm_MAD3115F2019
//
//  Created by MacStudent on 2019-11-08.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

class Hydro: Bill
{
    var agencyName: String
    var consumedUnits: Int
    
    init(Id: Int, billDate: Date, billType: typesOfBill, totalBillAmount: Float, agencyName: String, unitconsumed: Int)
    {
        self.agencyName = agencyName
        self.consumedUnits = unitconsumed
        
        super.init(Id: Id, billDate: billDate, billType: billType, totalBillAmount: totalBillAmount)
    }
    
}
