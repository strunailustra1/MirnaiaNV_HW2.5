//
//  WelcomeViewController.swift
//  MirnaiaNV_HW2.5
//
//  Created by Наталья Мирная on 26/11/2019.
//  Copyright © 2019 Наталья Мирная. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var login: UILabel!
    
    var loginText: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        login.text = "Welcome, \(loginText!)!"
    }
}
