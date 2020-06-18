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
    
    let correctUsername = "yb4"
    let correctPassword = "123456"
    
@IBAction func didTapLoginButton(_ sender: UIButton) {
    
    guard
        usernameTextField.text == correctUsername,
        passwordTextField.text == correctPassword
        else { incorrectLoginAlert(); return }
        
let deadline = DispatchTime.now() + .seconds(3)
            
DispatchQueue.main.asyncAfter(deadline: deadline) {
    print("Login button pressed")
    
    let user = User.init(name: "Yaz", age: 30,  avatar: UIImage(named: "pursuitProfilePic") ?? UIImage())
    
    self.performSegue(withIdentifier: "segue.Main.loginToMainApp", sender: user)

        }
    }
    
    func incorrectLoginAlert(){
        
        let message = "Incorrect username or password. Please try again."
        let alert = UIAlertController(title: "Login Failed", message: message , preferredStyle: .alert)
        
        let dismissAction = UIAlertAction(title: "Dismiss", style: .cancel)
        
        alert.addAction(dismissAction)
        present(alert, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        if let mainAppVC = segue.destination as? DetailViewController, let user = sender as? User {
           
            mainAppVC.user = user
            
        
        }
    }

}

