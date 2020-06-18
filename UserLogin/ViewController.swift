//
//  ViewController.swift
//  UserLogin
//
//  Created by Yaz Burrell on 6/17/20.
//  Copyright © 2020 Yaz Burrell. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
@IBOutlet weak var usernameTextField: UITextField!
@IBOutlet weak var passwordTextField: UITextField!
@IBOutlet weak var loginButton: UIButton!
    
  
    
@IBAction func didTapLoginButton(_ sender: UIButton) {
        
let deadline = DispatchTime.now() + .seconds(3)
            
DispatchQueue.main.asyncAfter(deadline: deadline) {
    print("Login button pressed")
    
    self.performSegue(withIdentifier: "segue.Main.loginToMainApp", sender: self.usernameTextField.text)

        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        if let mainAppVC = segue.destination as? DetailViewController, let username = sender as? String {
           
            mainAppVC.username = username
            
        
        }
    }

}

