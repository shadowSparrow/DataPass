//
//  ProfileViewController.swift
//  dataPass
//
//  Created by mac on 24.12.2021.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var skillsLabel: UILabel!
    @IBOutlet weak var hobbyLabel: UILabel!
    
    var skillText = ""
    var hobbyText = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        skillsLabel.text = skillText
        hobbyLabel.text = hobbyText
        
    }
    

}
