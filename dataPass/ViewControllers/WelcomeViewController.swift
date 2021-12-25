//
//  UserViewController.swift
//  dataPass
//
//  Created by mac on 15.12.2021.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var greetingTextLabel: UILabel!
    @IBOutlet weak var greetingIconLabel: UILabel!
    
    var greetingName = ""
    var greetingSurname = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        greetingTextLabel.text = "Hello \(greetingName) \(greetingSurname)"
        greetingIconLabel.text = "🤟"
        
    }
}
