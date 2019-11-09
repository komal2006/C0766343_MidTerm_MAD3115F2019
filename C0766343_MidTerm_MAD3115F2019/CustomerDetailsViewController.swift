//
//  BillDetailsViewController.swift
//  C0766343_MidTerm_MAD3115F2019
//
//  Created by MacStudent on 2019-11-08.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class CustomerDetailsViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource{
   
    
    var customerDetails:Customer?=nil
    @IBOutlet weak var lblDetails: UILabel!
    @IBOutlet weak var lbldetails2: UILabel!
    
    
    @IBOutlet weak var billList: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblDetails.text = customerDetails?.fullName
        lbldetails2.text = customerDetails?.customerEmail
        self.billList.delegate=self
        self.billList.dataSource=self
       let rightButton = UIBarButtonItem(title: "Add Bill", style: UIBarButtonItem.Style.plain, target: self, action: #selector( self.AddBill))
       self.navigationItem.rightBarButtonItem = rightButton
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ((customerDetails?.billDictionary.count)!)
       }
       
       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "mycell")!
        let currentbill = customerDetails?.billDictionary[indexPath.row + 1]
        var details = ""
        if currentbill?.billType == typesOfBill.Mobile{
            cell.textLabel?.numberOfLines = 12
            let mobileBill = currentbill as! Mobile
            details = "\nBill Type : Mobile \nManufacturer Name : \(mobileBill.mobileManufacturer) \nPlan Name : \(mobileBill.planName) \nMobile Number : \(mobileBill.mobileNumber) \nInternet used : \(mobileBill.internetUsed.insertGB()) \nMinutes Used : \(mobileBill.minutesUsed.insertMinutes()) "
        } else {
            if currentbill?.billType == typesOfBill.Hydro{
                cell.textLabel?.numberOfLines = 12
                let hydroBill = currentbill as! Hydro
                details = "\nBill Type : Hydro \nAgency Name : \(hydroBill.agencyName) \nUnit Consumed : \(hydroBill.consumedUnits.insertUnit())"
            } else {
                if currentbill?.billType == typesOfBill.Internet{
                    cell.textLabel?.numberOfLines = 12
                    let internetBill = currentbill as! Internet
                    details = "\nBill Type : Internet \nProvider Name : \(internetBill.providerName) \nInternet Used : \(internetBill.internetUsage.insertGB())"
                }
            }
        }
        
        
        cell.textLabel?.text = "Bill ID : \(String(describing: currentbill!.billID)) \nBill Date : \(String(describing: currentbill!.billDate.DateFormat())) \nBill Total : \(String(describing: currentbill!.totalBillAmount.insertCurrency())) \(details)"
        return cell
        
       }
    @objc func AddBill(){
    self.performSegue(withIdentifier: "goToAddNewBill", sender: nil)
    }
}
