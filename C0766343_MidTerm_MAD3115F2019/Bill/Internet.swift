//
//  Internet.swift
//  C0766343_F2019_MID_TERM_MAD3004
//
//  Created by MacStudent on 2019-10-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
class Internet : Bill
{
    var providerName: String!
    var usedGB: Int!
    
    
    
    init(billID: Int, billDate: String, billType: Types, totalBillAmount: Double, providerName: String!, usedGB: Int!)
    {
        super.init(billID: billID, billDate: billDate, billType: billType, totalBillAmount: totalBillAmount)
        self.providerName=providerName
        self.usedGB=usedGB
        
    }
    
    override func display()
    {
        super.display()
        print("Provider Name : \(providerName!)")
        print("Internet Used GB : \(usedGB!.GB())")
    
    
}
}
