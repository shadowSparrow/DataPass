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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = name + " " + surname
        imageView.image = UIImage(named: imageName)
        print(skillsText)
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let nextVC = segue.destination as? ProfileViewController else {return}

        nextVC.imageName = imageName
        nextVC.skillsText = skillsText
        nextVC.hobbyText = hobbyText
        
    }
    
    @IBAction func showProfileAction(_ sender: Any) {
    }
    

}
