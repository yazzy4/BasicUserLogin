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
    
    self.performSegue(withIdentifier: "segue.Main.loginToMainApp", sender: nil)

    }
}
    


}

