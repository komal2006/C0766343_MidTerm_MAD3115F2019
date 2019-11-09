//
//  AddBillViewController.swift
//  C0766343_MidTerm_MAD3115F2019
//
//  Created by Simranjit Singh Johal on 2019-11-08.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class AddBillViewController: UIViewController {

    @IBOutlet weak var txtDate: UITextField!
    @IBOutlet weak var txtTotalAmount: UITextField!
    @IBOutlet weak var segType: UISegmentedControl!
    
    let datePicker = UIDatePicker()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.showDatePicker()
        let rightButton = UIBarButtonItem(title: "Save", style: UIBarButtonItem.Style.plain, target: self, action: #selector(   self.saveBill))
        self.navigationItem.rightBarButtonItem = rightButton
       
        self.txtDate.resignFirstResponder()
    }
    
    
    func showDatePicker(){
       
        datePicker.datePickerMode = .date
        
        let toolbar = UIToolbar();
        toolbar.sizeToFit()
        let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(donedatePicker));
        let spaceButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: nil, action: nil)
        let cancelButton = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(cancelDatePicker));
        
        toolbar.setItems([cancelButton,spaceButton,doneButton], animated: false)
        
        txtDate.inputAccessoryView = toolbar
        txtDate.inputView = datePicker
        
    }
    
    @objc func donedatePicker(){
        
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yyyy"
        txtDate.text = formatter.string(from: datePicker.date)
        self.view.endEditing(true)
    }
    
    @objc func cancelDatePicker(){
        self.view.endEditing(true)
    }
    
    @objc func saveBill(sender: UIBarButtonItem)
    {
    
        let idRandom = Int.random(in: 0..<10000)
        let passBill = Mobile(Id: idRandom, billDate: datePicker.date, billType: typesOfBill.Mobile, totalBillAmount: (self.txtTotalAmount?.text! as! NSString).floatValue, mobileManufacturer: "Samsung", planName: "Data + Text", mobileNumber: "9090909090", internetUsed: 3 , minuteUsed: 343)
        let convertBill = passBill as Bill
       
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func segmentBillType(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            print("Mobile")
           
        case 1:
            print("Internet")
          
        case 2:
            print("Hydro")
            
        default:
            print("Mobile")
        }
    }
    

    

}
