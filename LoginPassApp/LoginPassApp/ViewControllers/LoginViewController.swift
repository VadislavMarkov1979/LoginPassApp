//
//  ViewController.swift
//  LoginPassApp
//
//  Created by Владимир Макаров on 04.11.2021.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var textUserName: UITextField!
    @IBOutlet weak var textPassword: UITextField!
    
    private let user = User.getUserData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else {return}
        welcomeVC.user = user
    }

    @IBAction func pressedLogIn() {
        if textUserName.text != user.login || textPassword.text != user.pass {
            showAlert(titel: "Alert!", message: "Incorrect data entered")
            return
        }
        performSegue(withIdentifier: "welocomeVC", sender: nil)
    }
    
    @IBAction func pressedFargot(_ sender: UIButton) {
        if sender.tag == 0 {
            showAlert(titel: "Alert!", message: "Your User Name is: \(user.login)")
        } else {
            showAlert(titel: "Alert!", message: "Your Password is: \(user.pass)")
        }
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        let _ = segue.source as! WelcomeViewController
        textUserName.text = ""
        textPassword.text = ""
    }
    
    private func showAlert(titel: String, message: String) {
        let alert = UIAlertController(title: titel, message: message, preferredStyle: .alert)
        let alertOk = UIAlertAction(title: "Ok", style: .default)
        {_ in self.textPassword.text = ""}
        alert.addAction(alertOk)
        present(alert, animated: true)
    }
    
}

