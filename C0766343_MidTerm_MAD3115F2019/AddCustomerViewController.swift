//
//  NewCustomerViewController.swift
//  C0766343_MidTerm_MAD3115F2019
//
//  Created by MacStudent on 2019-10-31.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class AddCustomerViewController: UIViewController {

    
      let a = Singleton.getInstance()
    @IBOutlet weak var txtLastName: UITextField!
    @IBOutlet weak var txtFirstName: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    
    
   // @IBAction func btnsave(_ sender: UIBarButtonItem)
    private func saveCustomerButton()
    {
     let btnSave=UIBarButtonItem(title: "Save", style: .done, target: self, action: #selector(AddCustomerViewController.saveCustomer(sender:)))
        
        navigationItem.rightBarButtonItem=btnSave
    }
    
    @objc
    func saveCustomer(sender: UIBarButtonItem)
    {
        //print("Customer Added")
     let sb1=UIStoryboard(name: "Main", bundle: nil)
     let customerListVC=sb1.instantiateViewController(withIdentifier: "customerListVC") as! CustomerListViewController
      // navigationController?.pushViewController(customerListVC, animated: true)
       // navigationController?.popViewController(animated: true)

    
    
        let fName = txtFirstName.text
        let lName = txtLastName.text
        
        if isValidEmail()
               {
               
                   let email = txtEmail.text
                   a.addNewCustomer(FirstName: fName!, LastName: lName!, Email: email!)
                   
                   let alert = UIAlertController(title: "Added", message: "Customer Added Successfully!", preferredStyle: .alert)

                alert.addAction(UIAlertAction(title: "OK", style: .default, handler: {(alert: UIAlertAction!) in self.navigationController?.popViewController(animated: true)}))
                   
                
                   self.present(alert, animated: true)
               }
               else{
                   
                   let alert = UIAlertController(title: "INVALID EMAIL!", message: "Please Enter Valid Email", preferredStyle: .alert)

                   alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                   
                   self.present(alert, animated: true)
                   
               }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        saveCustomerButton()

        
    }
    
    // https://stackoverflow.com/questions/25471114/how-to-validate-an-e-mail-address-in-swift
    
    func isValidEmail() -> Bool {
           let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"

           let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
           return emailPred.evaluate(with: txtEmail.text!)
    }

    

}
