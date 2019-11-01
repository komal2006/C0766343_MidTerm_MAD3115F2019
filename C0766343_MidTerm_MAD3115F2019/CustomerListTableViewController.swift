//
//  CustomerListTableViewController.swift
//  C0766343_MidTerm_MAD3115F2019
//
//  Created by MacStudent on 2019-10-31.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class CustomerListTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tempvar.returnCount()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let x = tempvar.returnCustObject(custID: Int(indexPath.row+1))
        let cell = tableView.dequeueReusableCell(withIdentifier: "mycell", for: indexPath)
        cell.textLabel?.text = x?.fullName
        return cell
    }
    

    @IBOutlet weak var customerTV: UITableView!
    
    
    @IBAction func newCustomerBtn(_ sender: UIBarButtonItem)
    {
        let sb1 = UIStoryboard(name: "Main", bundle: nil)
        let NewCustomerVC = sb1.instantiateViewController(withIdentifier: "NewCustomerVC") as! NewCustomerViewController
        navigationController?.pushViewController(NewCustomerVC, animated: true)
      }
        
   
    
    override func viewDidLoad() {
        super.viewDidLoad()

        customerTV.delegate=self
        customerTV.dataSource=self
        navigationItem.hidesBackButton=true
        addLogoutButton()
        addCustomerButton()
    }
    

    private func addLogoutButton()
    {
        let btnLogout=UIBarButtonItem(title: "Logout", style: .done, target: self, action: #selector(CustomerListTableViewController.logout(sender:)))
        
        navigationItem.leftBarButtonItem=btnLogout
    }
    @objc
    func logout(sender: UIBarButtonItem)
    {
        print("logout")
        navigationController?.popViewController(animated: true)
    }
    private func addCustomerButton()
    {
        let btnLogout=UIBarButtonItem(title: "ADD", style: .done, target: self, action: #selector(CustomerListTableViewController.addCustomer(sender:)))
        
        navigationItem.rightBarButtonItem=btnLogout
    }
    
    @objc
    func addCustomer(sender: UIBarButtonItem)
    {
        print("Customer Added")
        let sb1=UIStoryboard(name: "Main", bundle: nil)
        let addCustomerVC=sb1.instantiateViewController(withIdentifier: "addCustomerVC") as! NewCustomerViewController
        navigationController?.pushViewController(addCustomerVC, animated: true)
        
    }
    var tempvar = Singleton.getInstance()
    
    override func viewWillAppear(_ animated: Bool) {
        customerTV.reloadData()
        
    }

}
