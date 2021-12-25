//
//  AboutMeViewController.swift
//  dataPass
//
//  Created by mac on 23.12.2021.
//

import UIKit

class AboutMeViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    var name = ""
    var surname = ""
    var imageName = ""
    var skillsText = ""
    var hobbyText = ""
    
    //private let user = User.getUser()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = name + " " + surname
        imageView.image = UIImage(named: imageName)
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let nextVC = segue.destination as? ProfileViewController else {return}

        nextVC.imageName = imageName
        nextVC.skillText = skillsText
        nextVC.skillText = skillsText
    }
    
    @IBAction func showProfileAction(_ sender: Any) {
    }
    

}
