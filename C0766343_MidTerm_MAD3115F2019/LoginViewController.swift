//
//  ViewController.swift
//  C0766343_MidTerm_MAD3115F2019
//
//  Created by MacStudent on 2019-10-31.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var txtEmail: UITextField!
    
    @IBOutlet weak var txtPassword: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
   
    @IBAction func btnLogin(_ sender: Any) {
//        let email = txtEmail.text!
//        print("Hello \(email)")
//        let pswd = txtPassword.text
//
//        if email == "komaldeepkr99@gmail.com"
//        {
//            if pswd == "deep123"
//            {
//                print("Signed In ")
//            }
//        }
//        else
//        {
//            print("username or password is incorrect")
//        }
//
        
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let CustomerVC = sb.instantiateViewController(withIdentifier: "CustomerVC") as! CustomerListTableViewController
        
        
        navigationController?.pushViewController(CustomerVC, animated: true)
    }
    

}

