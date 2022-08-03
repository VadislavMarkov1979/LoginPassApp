//
//  WelcomeViewController.swift
//  LoginPassApp
//
//  Created by Владимир Макаров on 04.11.2021.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var textWelcomeName: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textWelcomeName.text = "Welcome!"
    }
    
}
