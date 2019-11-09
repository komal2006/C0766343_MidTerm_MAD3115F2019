//
//  ViewController.swift
//  C0766343_MidTerm_MAD3115F2019
//
//  Created by MacStudent on 2019-10-31.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var txtUser: UITextField!
       @IBOutlet weak var txtPassword: UITextField!
     
       @IBOutlet weak var btnLogin: UIButton!
     var uDefault : UserDefaults!
    @IBOutlet weak var btnRememberMe: UISwitch!
    
   
        override func viewDidLoad()
        {
                 super.viewDidLoad()
        
        
         let getdata = Singleton.getInstance()
               getdata.createCustomer()

        uDefault  = UserDefaults.standard
        if let userName = uDefault.value(forKey: "userName"){
            txtUser.text = userName as? String
        }
        
        if let userPassword = uDefault.value(forKey: "userPassword"){
            txtPassword.text = userPassword as? String
        }
       }
  

    
    @IBAction func btnLogin(_ sender: UIButton) {
        
        if readInformationPlist()
                {
                    if self.btnRememberMe.isOn{
                        self.uDefault.set(txtUser.text, forKey: "userName")
                        self.uDefault.set(txtPassword.text, forKey: "userPassword")
                    }else{
                        self.uDefault.removeObject(forKey: "userName")
                        self.uDefault.removeObject(forKey: "userPassword")
                    }
                    
                    
                    let sb=UIStoryboard(name: "Main", bundle: nil)
                           let customerListVC=sb.instantiateViewController(withIdentifier: "customerListVC") as! CustomerListViewController
                           navigationController?.pushViewController(customerListVC, animated: true)

               
            }
                else{
                    let alert = UIAlertController(title: "Invalid Username Or Password", message: "Enter Correct Username or Password", preferredStyle: .alert)

                    alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                   
                    self.present(alert, animated: true)
                    print("Incorrect Username or Password")
                }
        
    }
   
    
    
    func readInformationPlist() -> Bool{
       if let bundlePath = Bundle.main.path(forResource: "Users", ofType: "plist") {
           let dictionary = NSMutableDictionary(contentsOfFile: bundlePath)
            let usersList = dictionary!["Users"] as! NSArray
        
            for u in usersList
            {
                 let user = u as! NSDictionary
                let uname = user["username"]! as! String
                let pwd = user["password"]! as! String
                if uname == txtUser.text! && pwd == txtPassword.text!
                {
                    return true
                }
            }
        
       
           }
            return false
       }
       
    
}

