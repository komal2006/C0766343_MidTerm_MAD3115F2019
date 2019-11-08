//
//  Internet.swift
//  C0766343_MidTerm_MAD3115F2019
//
//  Created by MacStudent on 2019-11-08.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
class Internet: Bill{
    
    var providerName: String
    var internetUsed: Int
    init(billId: Int, billDate: String, billType: TypesOfBill, billAmount: Float, providerName: String,internetUsed: Int )
    {
        
        
        self.providerName = providerName
        self.internetUsed = internetUsed
        super.init(billId: billId, billDate: billDate, billType: billType, billAmount: billAmount)
    }
    
    override func display()
    {
        super.display()
        print("Provider Name: \(providerName)")
        print("Internet Used: \(internetUsed.insertGB())")
    }
    
}
