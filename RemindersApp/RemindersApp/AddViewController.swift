//
//  AddViewController.swift
//  RemindersApp
//
//  Created by Çağdaş Ekşi on 28.01.2022.
//

import UIKit

class AddViewController: UIViewController {

    @IBOutlet weak var lblTitle: UITextField!
    @IBOutlet weak var lblBody: UITextField!
    @IBOutlet weak var datePicker: UIDatePicker!
    
    public var complation: ((String, String, Date) -> Void)?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Save", style: .done, target: self, action: #selector(btnSave))
        
       
    }
    
    @objc func btnSave() {
         
        if let titleText = lblTitle.text, !titleText.isEmpty,
        let bodyText = lblBody.text, !bodyText.isEmpty {
            
            let targetDate = datePicker.date
            
            complation?(titleText, bodyText, targetDate)
            
        }
        
        
    }
   

}

 

