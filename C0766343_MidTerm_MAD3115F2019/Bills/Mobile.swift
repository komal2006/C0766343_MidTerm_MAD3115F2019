//
//  Mobile.swift
//  C0766343_MidTerm_MAD3115F2019
//
//  Created by MacStudent on 2019-11-08.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
class Mobile:Bill{
    
    var mobileManufacturer: String
    var plan: String
    var mobileNumber: Int
    var internetUsed: Int
    var minutesUsed: Int
    
    init(billId: Int, billDate: String , billType: TypesOfBill, billAmount: Float, mobileManufacturer: String,plan: String, mobileNum: Int,internetUsed: Int, minutesUsed: Int) {
        
        self.mobileManufacturer = mobileManufacturer
        self.plan = plan
        self.mobileNumber = mobileNum
        self.internetUsed = internetUsed
        self.minutesUsed = minutesUsed
        super.init(billId: billId, billDate:billDate, billType: billType, billAmount: billAmount)
    }
    override func display() {
        super.display()
        print("Manufactuer Name : \(mobileManufacturer)")
        print("Plan Name: \(plan)")
        print("Mobile Number: \(mobileNumber)")
        print("Internet Used: \(internetUsed.insertGB())")
        print("Minutes Used: \(minutesUsed.insertMin())")
        
    }
    
    
}
