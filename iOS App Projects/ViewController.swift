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
                performSegue(withIdentifier: "loginSegue", sender: self)
                warningLabel.isHidden = true
            }
            else if UsrnmeTextField.text == "" {

                let alertController = UIAlertController(title: "Warning", message: "Username should not be blank !", preferredStyle:.alert)
                present(alertController, animated: true)
                alertController.addAction(UIAlertAction(title: "Close",
                                                        style: UIAlertAction.Style.destructive, handler: { _ in
                    alertController.dismiss(animated: true)
                }))
            }
            else if  PasswdTextField.text == ""
            {
                let alertController = UIAlertController(title: "Warning", message: "Password should not be blank !", preferredStyle:.alert)
                present(alertController, animated: true)
                alertController.addAction(UIAlertAction(title: "Close",
                                                        style: UIAlertAction.Style.destructive, handler: { _ in
                    alertController.dismiss(animated: true)
                }))
            }
            else{
                let alertController = UIAlertController(title: "Warning", message: "Incorrect username or password !", preferredStyle:.alert)
                present(alertController, animated: true)
                alertController.addAction(UIAlertAction(title: "Close",
                                                        style: UIAlertAction.Style.destructive, handler: { _ in
                    alertController.dismiss(animated: true)
                }))
            }
            
        }
    }
}

