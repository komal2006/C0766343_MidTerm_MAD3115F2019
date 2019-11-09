//
//  Mobile.swift
//  C0766343_MidTerm_MAD3115F2019
//
//  Created by MacStudent on 2019-11-08.
//  Copyright © 2019 MacStudent. All rights reserved.
//
import Foundation

class Mobile: Bill
{
    var mobileManufacturer: String
    var planName: String
    var mobileNumber: String
    var internetUsed: Int
    var minutesUsed: Int
    
    
    init(Id: Int, billDate: Date, billType: typesOfBill, totalBillAmount: Float, mobileManufacturer: String, planName: String, mobileNumber: String, internetUsed: Int, minuteUsed: Int)
    {
        self.mobileManufacturer = mobileManufacturer
        self.planName = planName
        self.mobileNumber = mobileNumber
        self.internetUsed = internetUsed
        self.minutesUsed = minuteUsed
        
        super.init(Id: Id, billDate: billDate, billType: billType, totalBillAmount: totalBillAmount)
    }
    
}
