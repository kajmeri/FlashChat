//
//  RegisterViewController.swift
//  Flash Chat
//
//  Created by Krishna Ajmeri on 1/23/20.
//  Copyright © 2020 Krishna Ajmeri. All rights reserved.
//

import UIKit
import Firebase

class RegisterViewController: UIViewController {
	
	@IBOutlet weak var emailField: UITextField!
	@IBOutlet weak var passwordField: UITextField!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
	}
	
	@IBAction func registerPressed(_ sender: UIButton) {
		if let email = emailField.text, let password = passwordField.text {
			Auth.auth().createUser(withEmail: email, password: password) { (authResult, error) in
				if let e = error {
					print(e.localizedDescription)
				} else {
					self.performSegue(withIdentifier: Constants.registerSegue, sender: self)
				}
			}
		}
	}
}
