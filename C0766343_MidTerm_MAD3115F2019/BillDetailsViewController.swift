//
//  BillDetailsViewController.swift
//  C0766343_MidTerm_MAD3115F2019
//
//  Created by MacStudent on 2019-11-08.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class BillDetailsViewController: UIViewController {
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
        lblEmail.text = billData?.customerEmail
       // lblTotalAmount.t = billData?.totalBillAmount.currencyFormat()
        
    }
    

  
}



