//
//  Hydro.swift
//  C0766343_F2019_MID_TERM_MAD3004
//
//  Created by MacStudent on 2019-10-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
class Hydro : Bill
{
    var agencyName: String!
    var consumedUnits: Int!
    
    init(billID: Int, billDate: String, billType: Types, totalBillAmount: Double, agencyName: String,consumedUnits:Int)
    {
        super.init(billID: billID, billDate: billDate, billType: billType, totalBillAmount: totalBillAmount)
        self.agencyName=agencyName
       self.consumedUnits=consumedUnits
    }
    
    
    override func display()
    {
        super.display()
        print("Agency Name : \(agencyName!)")
        print("Units Consumed : \(consumedUnits!.Units())")
}
}
