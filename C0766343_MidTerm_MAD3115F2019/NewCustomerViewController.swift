//
//  NewCustomerViewController.swift
//  C0766343_MidTerm_MAD3115F2019
//
//  Created by MacStudent on 2019-10-31.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class NewCustomerViewController: UIViewController {

    //@IBOutlet weak var customerID: UITextField!
    
    
    @IBOutlet weak var firstName: UITextField!
    
    @IBOutlet weak var lastName: UITextField!
    
    @IBOutlet var emailAddress: UITextField!
    
  let add = Singleton.getInstance()
      
    
    
    private func saveCustomerButton()
    {
        let btnSave=UIBarButtonItem(title: "Save", style: .done, target: self, action: #selector(NewCustomerViewController.saveCustomer(sender:)))
        
        navigationItem.rightBarButtonItem=btnSave
    }
    
    @objc
    func saveCustomer(sender: UIBarButtonItem)
    {
        //print("Customer Added")
        let sb1=UIStoryboard(name: "Main", bundle: nil)
        let customerListVC=sb1.instantiateViewController(withIdentifier: "customerListVC") as! CustomerListTableViewController
        navigationController?.pushViewController(customerListVC, animated: true)
        
        
       // let custID = customerID.text
        let fName = firstName.text
        let lName = lastName.text
    
        if isValidEmail()
        {
            
            let email = emailAddress.text
            add.addNewCustomer(First_Name: fName!, Last_Name: lName!, email: email!)
            
            let alert = UIAlertController(title: "Success", message: "Congrats! Added Successfully", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            
            self.present(alert, animated: true)
        }
        else{
            
            let alert = UIAlertController(title: "INVALID EMAIL!", message: "Please Enter a Valid Email Address", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            
            self.present(alert, animated: true)
            
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    // saveCustomerButton()
        
    }
    

    func isValidEmail() -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        
        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: emailAddress.text!)
    }
}
