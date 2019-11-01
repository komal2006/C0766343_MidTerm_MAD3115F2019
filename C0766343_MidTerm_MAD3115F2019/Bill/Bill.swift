//
//  Bill.swift
//  C0766343_F2019_MID_TERM_MAD3004
//
//  Created by MacStudent on 2019-10-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
class Bill:IDisplay
{
    
    var billID = Int()
    var billDate = String()
    var billType : Types
    enum Types {
        case Internet
        case Hydro
        case Mobile
    }
    var totalBillAmount: Double!
    
    
     init(billID:Int,billDate:String,billType:Types,totalBillAmount:Double) {
        self.billDate=billDate
        self.billID=billID
        self.totalBillAmount=totalBillAmount
        self.billType=billType
    }
    
    
    func display()
    {
        print("Bill ID : \(billID)")
        print("Bill Date : \(billDate)")
        print("Bill Type : \(billType)")
        print("Bill Amount : \(totalBillAmount.currency())")


}
}
