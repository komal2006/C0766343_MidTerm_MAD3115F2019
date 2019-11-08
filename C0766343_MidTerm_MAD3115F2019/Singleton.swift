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

private static var obj = Singleton()


private override init() {
    
}

internal static func getInstance() -> Singleton
{
    return obj
}

func addNewCustomer(First_Name : String, Last_Name : String, email : String)
{
    let c = customerDictionary.count + 1
    
    let addCust = Customer(customerID: c, customerFName: First_Name, customerLName: Last_Name, email: email)
    self.AddCustomer(customer: addCust)
}

func returnCustObject(custID : Int) -> Customer?
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

func createCust()
{
    let c1 = Customer(customerID: 01, customerFName: "Komaldeep", customerLName: "Kaur", email: "komaldeepkr99@gmail.com ")
    AddCustomer(customer: c1)
    let c2 = Customer(customerID: 02, customerFName: "Varinder", customerLName: "Dhilllon", email: "varinderdhillon@gmail.com ")
    AddCustomer(customer: c2)
    let c3 = Customer(customerID: 03, customerFName: "Charanpreet", customerLName: "Kaur",email: "charanpreet@gmail.com ")
    AddCustomer(customer: c3)
    let c4 = Customer(customerID: 04, customerFName: "Harmanpreet", customerLName: "Singh", email: "camysandhu@gmail.com ")
    AddCustomer(customer: c4)
    
    let c5 = Customer(customerID: 05, customerFName: "Simarjit", customerLName: "Singh", email: "simar99@gmail.com ")
    AddCustomer(customer: c5)
    
     let bill1ForCust1 = Hydro(billId: 1, billDate: "02-1-2014", billType: .Hydro, billAmount: 500.00, agency: "Tronto Hydro Services inc.", unitsConsumed: 121)
    let bill2ForCust1 = Mobile(billId: 2, billDate: "25-10-2011", billType: .Mobile, billAmount: 490.00, mobileManufacturer: "Samsung", plan: "Talk + Internet", mobileNum: 1231231231, internetUsed: 5, minutesUsed: 950)
    let bill3ForCust1 = Internet(billId: 3, billDate: "12-09-2015", billType: .Mobile, billAmount: 280.0, providerName: "Rogers", internetUsed: Int(900.0))
   
    c1.addBillToCustomer(b: bill1ForCust1)
    c1.addBillToCustomer(b: bill2ForCust1)
    c1.addBillToCustomer(b: bill3ForCust1)
    
    
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
