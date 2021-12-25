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
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = name + " " + surname
        imageView.image = UIImage(named: imageName)
        
    }
    
    @IBAction func showProfileAction(_ sender: Any) {
    }
    

}
