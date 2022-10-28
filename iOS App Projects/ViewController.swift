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
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func LogInBtnAct(_ sender: UIButton) {
        print(" Hi \(UsrnmeTextField.text ?? "Please Enter a valid username")")
        print (" Your Password : \(PasswdTextField.text ?? "incorrect email username or password.") ..is secure ")
        LoadinfoActivtyIndicator.startAnimating()
    }
    
}

