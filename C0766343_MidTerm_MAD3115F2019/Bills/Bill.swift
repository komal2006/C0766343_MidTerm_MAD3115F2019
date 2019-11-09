//
//  Bill.swift
//  C0766343_MidTerm_MAD3115F2019
//
//  Created by MacStudent on 2019-11-08.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

enum typesOfBill: String {
    case Mobile = "Mobile"
    case Internet = "Internet"
    case Hydro = "Hydro"
}

class Bill
{
    var billID: Int
    var billDate: Date
    var billType: typesOfBill
    var totalBillAmount: Float
    
    
   
    init(Id: Int, billDate: Date, billType: typesOfBill, totalBillAmount: Float)
    {
        self.billID = Id
        self.billDate = billDate
        self.billType = billType
        self.totalBillAmount = totalBillAmount
    }
}

