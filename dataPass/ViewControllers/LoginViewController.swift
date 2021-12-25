//
//  ViewController.swift
//  dataPass
//
//  Created by mac on 15.12.2021.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButtonAction: UIButton!
    
   private let user = User.getUser()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "LoginScreen"
        
        loginTextField.placeholder = "tap your login name"
        passwordTextField.placeholder = "tap your password"
        
        loginTextField.autocorrectionType = .no
        loginTextField.spellCheckingType = .default
        loginTextField.returnKeyType = .next
        passwordTextField.returnKeyType = .done
        
        passwordTextField.isSecureTextEntry = true
        
        loginTextField.delegate = self
        passwordTextField.delegate = self
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        loginButtonAction.isEnabled = false
       
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let tabBarController = segue.destination as! UITabBarController
        
        guard let viewControllers = tabBarController.viewControllers else {return}
        
        for viewcontroller in viewControllers {
            if let welcomeWC = viewcontroller as? WelcomeViewController {
                welcomeWC.greetingName = user.person.name
                welcomeWC.greetingSurname = user.person.surname
            } else if let navigationVC = viewcontroller as? UINavigationController {
                let aboutVC = navigationVC.topViewController as! AboutMeViewController
                
                //let profileVC = navigationVC.topViewController as! ProfileViewController
                
                aboutVC.name = user.person.name
                aboutVC.surname = user.person.surname
                aboutVC.imageName = user.person.pictureName
                aboutVC.skillsText = user.person.professionalSkills
                aboutVC.skillsText = user.person.hobbies
                
            }
        }
        
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        
        view.endEditing(true)
    }
    
    
    @IBAction func unwind(for segue: UIStoryboardSegue){
        
        loginTextField.text = ""
        passwordTextField.text = ""
    
    }
    
    
    @IBAction func loginAction(_ sender: Any) {
        /*
        guard loginTextField.text != user.user && passwordTextField.text != user.password else { return }
        
    
            let alert = createAlert(with: "Wrong login or password")
            present(alert, animated: true, completion: nil)
        */
    }
    
    
    @IBAction func showLogin(_ sender: Any) {
        
        let showLoginAlert = createAlert(with: "Your login is \(user.user)")
        present(showLoginAlert, animated: true, completion: nil)
        
    }
    
    @IBAction func showPassword(_ sender: Any) {
        
        let showPasswordAllert = createAlert(with: "Your Password is wrong. Your Password is \(user.password)")
        present(showPasswordAllert, animated: true, completion: nil)
        
    }
    
}


private func createAlert(with title: String) -> UIAlertController {
    
    let alert = UIAlertController(title: title, message: nil, preferredStyle: .alert)
    let cancelAction = UIAlertAction(title: "Ok", style: .cancel, handler: nil)

    alert.addAction(cancelAction)

    return alert
    
    
}

extension LoginViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        if textField == loginTextField {
            passwordTextField.becomeFirstResponder()
        }
        
        return true
    }
    
    func textFieldDidChangeSelection(_ textField: UITextField) {
        loginButtonAction.isEnabled = true
    }
}

