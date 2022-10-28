//
//  ViewController.swift
//  iOS App Projects
//
//  Created by abdullah's Monterey  on 28.10.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var PasswdTextField: UITextField!
    @IBOutlet weak var UsrnmeTextField: UITextField!
    @IBOutlet weak var LoadinfoActivtyIndicator: UIActivityIndicatorView!
    @IBOutlet weak var warningLabel : UILabel!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        warningLabel.isHidden = true
        
    }
    
    @IBAction func LogInBtnAct(_ sender: UIButton) {
        
        if UsrnmeTextField.text == "abdullah" , PasswdTextField.isHidden
        {
            warningLabel.isHidden = true
            PasswdTextField.isHidden = false
            
        }
        
        else
        {
            
            if !(PasswdTextField.isHidden), PasswdTextField.text == "123456789" {
                LoadinfoActivtyIndicator.startAnimating()
                warningLabel.isHidden = true
            }
            else if UsrnmeTextField.text == "" {
                warningLabel.isHidden = true
                warningLabel.text = "Username should not be blank !"
                warningLabel.isHidden = false
            }
            else if  PasswdTextField.text == ""
            {   warningLabel.isHidden = true
                warningLabel.text = "Password should not be blank !"
                warningLabel.isHidden = false
            }
            else{
                warningLabel.isHidden = false
                warningLabel.text = "Incorrect username or password !"
            }
            
        }
    }
}

