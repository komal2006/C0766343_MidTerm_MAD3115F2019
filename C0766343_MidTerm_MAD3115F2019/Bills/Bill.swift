//
//  Bill.swift
//  C0766343_MidTerm_MAD3115F2019
//
//  Created by MacStudent on 2019-11-08.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
class Bill
{
    
    var billId: Int
    var billDate = String()
    var billType: TypesOfBill
    enum TypesOfBill{
        case Internet
        case Hydro
        case Mobile
    }
    var billAmount: Float
    
    
    init(billId: Int, billDate: String, billType: TypesOfBill, billAmount: Float) {
        self.billId = billId
        self.billDate = billDate
        self.billAmount  = billAmount
        self.billType = billType
    }
    
    func display(){
        print("Bill ID: \(billId)")
        print("Bill Date: \(billDate)")
        print("Bill Type: \(billType)")
        print("Bill Amount: \(billAmount.currencyFormat())")
    }
    
}
