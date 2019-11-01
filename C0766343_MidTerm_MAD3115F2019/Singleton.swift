//
//  Singleton.swift
//  C0766343_MidTerm_MAD3115F2019
//
//  Created by MacStudent on 2019-11-01.
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
    
    let temp = Customer(customerID: c, customerFName: First_Name, customerLName: Last_Name, customerEmail: email)
    self.AddCustomer(customer: temp)
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
    let c1 = Customer(customerID: 01, customerFName: "Komaldeep", customerLName: "Kaur", customerEmail: "komaldeepkr99@gmail.com ")
    AddCustomer(customer: c1)
    let c2 = Customer(customerID: 02, customerFName: "Varinder", customerLName: "Dhilllon", customerEmail: "varinderdhillon@gmail.com ")
    AddCustomer(customer: c2)
    let c3 = Customer(customerID: 03, customerFName: "Charanpreet", customerLName: "Kaur",customerEmail: "charanpreet@gmail.com ")
    AddCustomer(customer: c3)
    let c4 = Customer(customerID: 04, customerFName: "Harmanpreet", customerLName: "Singh", customerEmail: "camysandhu@gmail.com ")
    AddCustomer(customer: c4)
    
    let c5 = Customer(customerID: 05, customerFName: "Simarjit", customerLName: "Singh", customerEmail: "simar99@gmail.com ")
    AddCustomer(customer: c5)
    
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
