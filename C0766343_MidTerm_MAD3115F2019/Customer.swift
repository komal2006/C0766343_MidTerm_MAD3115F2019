//
//  Customer.swift
//  C0766343_F2019_MID_TERM_MAD3004
//
//  Created by MacStudent on 2019-10-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
class Customer
{
    var customerID : Int?
    var customerFName: String?
    var customerLName : String?
    var fullName : String
    {
        return customerFName! + " " + customerLName!
    }
   
        
        
    var email: String?
    
    
    var totalBillAmount : Float?
    static var activeCustomer = Customer()
    var billDictionary = [Int:Bill]()
    
    init(customerID:Int,customerFName: String,customerLName:String,email:String)
    {
        self.customerID=customerID
        self.customerFName=customerFName
        self.customerLName=customerLName
        self.email=email
        

}
    init(){
        self.customerID = Int()
        self.customerFName = String()
        self.customerLName = String()
        self.email = String()
    }

    
    
}



