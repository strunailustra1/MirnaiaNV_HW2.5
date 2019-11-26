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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard userName.text == "User", password.text == "Password" else {
            showAlert(title: "Invalid login or password", message: "Please, enter correct login and password")
            return false
        }
        return true
    }
    //
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("prepare")
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    
    
    @IBAction func forgotUserButton() {
        showAlert(title: "Oops!", message: "Your login is User😉")
    }
    
    @IBAction func forgotPassword() {
        showAlert(title: "Oops!", message: "Your password is Password😉")
    }
    
}

extension LogInViewController {
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            // self.textField.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
