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
    
    @IBOutlet weak var btnLogin: UIBarButtonItem!
    
    @IBOutlet weak var btnSwitch: UISwitch!
    var uDefault:UserDefaults!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        let getdata = Singleton.getInstance()
        getdata.createCust()
        
        uDefault  = UserDefaults.standard
        if let email = uDefault.value(forKey: "Email"){
            txtEmail.text = email as? String
        }
            
       
        
        if let Password = uDefault.value(forKey: "Password"){
            txtPassword.text = Password as? String
        }
        
    }
    
   
    @IBAction func btnLogin(_ sender: UIButton) {
        
               if readInformationPlist()
               {
            if self.btnSwitch.isOn{
                self.uDefault.set(txtEmail.text, forKey: "Email")
                self.uDefault.set(txtPassword.text, forKey: "Password")
            }else
            {
                self.uDefault.removeObject(forKey: "Email")
                self.uDefault.removeObject(forKey: "Password")
            }
            
            
        let sb = UIStoryboard(name: "Main", bundle: nil)
       let CustomerVC = sb.instantiateViewController(withIdentifier: "CustomerVC") as! CustomerListTableViewController


       navigationController?.pushViewController(CustomerVC, animated: true)
               }else{
                print("Incorrect Email or Password")
        }
        
    }
        
        
        func readInformationPlist() -> Bool{
            if let bundlePath = Bundle.main.path(forResource: "Customers", ofType: "plist") {
                let dictionary = NSMutableDictionary(contentsOfFile: bundlePath)
                let CustomersList = dictionary!["Customers"] as! NSArray
                
                for c in CustomersList
                {
                    let customer = c as! NSDictionary
                    let email = customer["Email"]! as! String
                    let pwd = customer["Password"]! as! String
                    if email==txtEmail.text! && pwd==txtPassword.text!
                    {
                        return true
                    }
                }
                
                
            }
            return false
        }
        
        
//        func showVersion()
//        {
//            if let version = Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString"), let versionCode = Bundle.main.object(forInfoDictionaryKey: "CFBundleVersion")  {
//
//                lblVersion.text = "Version \(version) (\(versionCode))"
//            }
//


}



