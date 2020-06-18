//
//  DetailViewController.swift
//  UserLogin
//
//  Created by Yaz Burrell on 6/18/20.
//  Copyright © 2020 Yaz Burrell. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var avatarView: UIImageView!
    @IBOutlet weak var greetingLabel: UILabel!
    
    var user: User?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let unwrappedUser = self.user else { return }
        
        avatarView.image = unwrappedUser.avatar
        greetingLabel.text = "Hello, \(unwrappedUser.name)! Your age is \(unwrappedUser.age)"
    }
    


}
