//
//  ViewController.swift
//  Flash Chat
//
//  Created by Krishna Ajmeri on 1/23/20.
//  Copyright © 2020 Krishna Ajmeri. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {
	
	@IBOutlet weak var titleLabel: UILabel!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		titleLabel.text = ""
		let titleText = Constants.appName
		var charIndex = 0
		
		for letter in titleText {
			Timer.scheduledTimer(withTimeInterval: 0.1 * Double(charIndex), repeats: false) { (timer) in
				self.titleLabel.text?.append(letter)
				
			}
			charIndex += 1
		}
	}
	
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		navigationController?.isNavigationBarHidden = true
	}
	
	override func viewWillDisappear(_ animated: Bool) {
		super.viewWillDisappear(animated)
		navigationController?.isNavigationBarHidden = false
	}
}

