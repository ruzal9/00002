//
//  ViewController.swift
//  0000
//
//  Created by Ruzal  on 22.05.2021.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var vkclientLabel: UILabel!
    
    @IBOutlet weak var loginLabel: UILabel!
    
    
    @IBOutlet weak var loginTextField: UITextField!
    
    @IBOutlet weak var passwordLabel: UILabel!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    let fromLoginTabBar = "fromLoginTabBar"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func pressButtonLabel(_ sender: Any) {
        guard let login = loginTextField.text,
              let password = passwordTextField.text
        
        else {
            print ("empty")
            return
        }
        if login == "admin" && password == "123" {
            performSegue(withIdentifier: fromLoginTabBar, sender: nil)
        }
        performSegue(withIdentifier: "fromLoginError", sender: nil)
    }
    

}

