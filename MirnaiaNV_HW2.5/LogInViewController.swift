//
//  LogInViewController.swift
//  MirnaiaNV_HW2.5
//
//  Created by Наталья Мирная on 26/11/2019.
//  Copyright © 2019 Наталья Мирная. All rights reserved.
//

import UIKit

class LogInViewController: UIViewController {

    @IBOutlet var userName: UITextField!
    @IBOutlet var password: UITextField!

    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard userName.text == "User", password.text == "Password" else {
            showAlert(title: "Invalid login or password",
                      message: "Please, enter correct login and password",
                      textFieid: password)
            return false
        }
        return true
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let welcomeVC = segue.destination as! WelcomeViewController
        welcomeVC.loginText = userName.text
    }
    
    @IBAction func forgotUserButton() {
        showAlert(title: "Oops!", message: "Your name is User 😉")
    }
    
    @IBAction func forgotPassword() {
        showAlert(title: "Oops!", message: "Your password is Password 😉")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userName.text = nil
        password.text = nil
    }
}

extension LogInViewController {
    private func showAlert(title: String, message: String, textFieid: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textFieid?.text = nil
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
