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
        
        initGradient()
    }
    
    private func initGradient() {
        let colors = Colors()
        view.backgroundColor = UIColor.clear
        let backgroundLayer = colors.gl
        backgroundLayer!.frame = view.frame
        view.layer.insertSublayer(backgroundLayer!, at: 0)
    }
}

class Colors {
    var gl:CAGradientLayer!

    init() {
        let colorTop = UIColor(red: 115.0 / 255.0,
                               green: 252.0 / 255.0,
                               blue: 214.0 / 255.0,
                               alpha: 1.0).cgColor
        
        let colorBottom = UIColor(red: 0.0 / 255.0,
                                  green: 144.0 / 255.0,
                                  blue: 81.0 / 255.0,
                                  alpha: 1.0).cgColor

        self.gl = CAGradientLayer()
        self.gl.colors = [colorTop, colorBottom]
        self.gl.locations = [0.0, 1.0]
    }
}
