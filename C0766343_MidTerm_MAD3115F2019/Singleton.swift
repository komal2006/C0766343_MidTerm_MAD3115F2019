//
//  Singleton.swift
//  C0766343_MidTerm_MAD3115F2019
//
//  Created by MacStudent on 2019-11-06.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

class Singleton: NSObject
{
     private var customerDictionary  = [Int:Customer]()
    
    private static var single = Singleton()
    
    
    private override init() {
        
    }
    
    internal static func getInstance() -> Singleton
    {
        return single
    }
    
    func addNewCustomer(FirstName : String, LastName : String, Email : String)
    {
        let c = customerDictionary.count + 1
        
        let cust = Customer(customerID: c, customerFName: FirstName, customerLName: LastName, customerEmail: Email)
        self.AddCustomer(customer: cust)
    }
    
    func CustomerObj(custID : Int) -> Customer?
    {
        for (k,v) in customerDictionary
        {
            if custID == k
            {
                return v
            }
        }
        return nil
        
    }
    
    func returnCount() -> Int
    {
        return customerDictionary.count
    }
    
    func createCustomer()
    {
        let b1: Mobile = Mobile(Id: 1, billDate: Date(), billType: typesOfBill.Mobile, totalBillAmount: 80.20, mobileManufacturer: "Samsung S50", planName: "Talktime + Data", mobileNumber: "+16478300129", internetUsed: 20, minuteUsed: 40)
        let b2: Mobile = Mobile(Id: 2, billDate: Date(), billType: typesOfBill.Mobile, totalBillAmount: 40.98, mobileManufacturer: "Apple", planName: "LTE+3G 9.5GB Promo plan", mobileNumber: "+14567431990", internetUsed: 70, minuteUsed: 500)
        
        let b3: Internet = Internet(Id: 1, billDate: Date(), billType: typesOfBill.Internet, totalBillAmount: 33.09, providerName: "Telus", internetUsed: 44)
        let b4: Internet = Internet(Id: 2, billDate: Date(), billType: typesOfBill.Internet, totalBillAmount: 240.19, providerName: "Bell", internetUsed: 865)
        
        let b5: Hydro = Hydro(Id: 1, billDate: Date(), billType: typesOfBill.Hydro, totalBillAmount: 765.98, agencyName: "Advantage", unitconsumed: 70)
        let b6: Hydro = Hydro(Id: 2, billDate: Date(), billType: typesOfBill.Hydro, totalBillAmount: 476.8, agencyName: "EngineerAgency", unitconsumed: 98)
        
    let c1 = Customer(customerID: 1, customerFName: "Komaldeep", customerLName: "Kaur", customerEmail: "komaldeepkaur@gmail.com ")
        AddCustomer(customer: c1)
        c1.addBill(Bill: b1)
        //c1.addBill(Bill: b4)
        
        let c2 = Customer(customerID: 2, customerFName: "Charanpreet", customerLName: "kaur", customerEmail: "charanpreetkaur@gmail.com ")
        AddCustomer(customer: c2)
        c2.addBill(Bill: b1)
        c2.addBill(Bill: b2)
        c2.addBill(Bill: b6)
        
        let c3=Customer(customerID: 3, customerFName: "Varinder", customerLName: "Dhillon", customerEmail: "varinderdhillon@gmail.com")
        AddCustomer(customer: c3)
      c3.addBill(Bill: b2)
        
        
    let c4 = Customer(customerID: 4, customerFName: "Simranjit", customerLName: "Singh", customerEmail: "simranjitsingh@gmail.com ")
        AddCustomer(customer: c4)

      c4.addBill(Bill: b2)
        c4.addBill(Bill: b6)
      
        let c5 = Customer(customerID: 5, customerFName: "Harmanpreet", customerLName: "Singh", customerEmail: "camysandhu@gmail.com ")
        AddCustomer(customer: c4)
        c4.addBill(Bill: b5)

        
        
        
        
        
        
    }
    
    

    
    func AddCustomer(customer: Customer)
    {
        customerDictionary.updateValue(customer, forKey: customer.customerID!)
    }
    func printdata()
    {
        for i in customerDictionary.values
        {
            print(i.customerFName!)
        }
    }
    

}
