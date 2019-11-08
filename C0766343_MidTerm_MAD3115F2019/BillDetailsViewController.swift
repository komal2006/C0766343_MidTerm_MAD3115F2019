//
//  BillDetailsViewController.swift
//  C0766343_MidTerm_MAD3115F2019
//
//  Created by MacStudent on 2019-11-08.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class BillDetailsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    var billObj = Singleton.getInstance()
    
    func numberOfSections(in tableView: UITableView) -> Int
    {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return (billData?.billDictionary.count)!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "detailCell", for: indexPath)
        let temp = billObj.returnCustObject(custID: Int(indexPath.row+1))
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String?
    {
        let header = "Bill Details"
        return header
    }
    
    var billData : Customer? = nil
    @IBOutlet weak var lblCustomerID: UILabel!
    
    @IBOutlet weak var lblCustomerName: UILabel!
    
    @IBOutlet weak var lblEmail: UILabel!
    
    @IBOutlet weak var lblTotalAmount: UIView!
    
    @IBOutlet weak var billTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.hidesBackButton=true
        lblCustomerID.text = billData?.customerID!.castString()
        lblCustomerName.text = billData?.fullName
        lblEmail.text = billData?.email
       //lblTotalAmount.t = billData?.totalBillAmount.currencyFormat()
        
    }
    

  
}



