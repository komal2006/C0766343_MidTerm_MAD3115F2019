//
//  NewCustomerViewController.swift
//  C0766343_MidTerm_MAD3115F2019
//
//  Created by MacStudent on 2019-10-31.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class NewCustomerViewController: UIViewController {

    @IBOutlet weak var customerID: UITextField!
    
    
    @IBOutlet weak var firstName: UITextField!
    
    @IBOutlet weak var lastName: UITextField!
    
    @IBOutlet var emailAddress: UITextField!
    
    @IBAction func btnSave(_ sender: UIBarButtonItem) {
      
        let fName = firstName.text
        let lName = lastName.text
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    func isValidEmail() -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        
        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: emailAddress.text!)
    }
}
