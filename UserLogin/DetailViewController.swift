//
//  DetailViewController.swift
//  UserLogin
//
//  Created by Yaz Burrell on 6/18/20.
//  Copyright © 2020 Yaz Burrell. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var greetingLabel: UILabel!
    
    var username: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    guard let unwrappedUsername = self.username else { return }
    greetingLabel.text = "Hello, \(unwrappedUsername)"
    }
    


}
