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
    
  
      
    
    
    private func saveCustomerButton()
    {
        let btnSave=UIBarButtonItem(title: "Save", style: .done, target: self, action: #selector(NewCustomerViewController.saveCustomer(sender:)))
        
        navigationItem.rightBarButtonItem=btnSave
    }
    
    @objc
    func saveCustomer(sender: UIBarButtonItem)
    {
        print("Customer Added")
        let sb1=UIStoryboard(name: "Main", bundle: nil)
        let customerListVC=sb1.instantiateViewController(withIdentifier: "customerListVC") as! CustomerListTableViewController
        navigationController?.pushViewController(customerListVC, animated: true)
        
        
        let custID = customerID.text
        let Fname = firstName.text
        let Lname = lastName.text
    
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
