//
//  UserViewController.swift
//  dataPass
//
//  Created by mac on 15.12.2021.
//

import UIKit

class UserViewController: UIViewController {

    @IBOutlet weak var greetingTextLabel: UILabel!
    @IBOutlet weak var greetingIconLabel: UILabel!
    
    var greatingText = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        greetingTextLabel.text = greatingText
        greetingIconLabel.text = "🤟"
        
    }
}
