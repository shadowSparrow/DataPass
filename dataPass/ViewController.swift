//
//  ViewController.swift
//  dataPass
//
//  Created by mac on 15.12.2021.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var loginButtonAction: UIButton!
    
    private let userName = "User"
    private let password = "password"
    
    
    
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
        
     /* Не понимаю почему не работает 
      
        if loginTextField.text == "" {
            loginButtonAction.isEnabled = false
        } else if loginTextField.text != "" {
            loginButtonAction.isEnabled = true
        }
    */
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let secondVC = segue.destination as! UserViewController
        guard let loginText = loginTextField.text else {return}
        secondVC.greatingText = "Hello, \(loginText)"
        
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    
        self.view.endEditing(true)
        
    }
    
    
    @IBAction func unwind(for segue: UIStoryboardSegue){
        
        loginTextField.text = ""
        passwordTextField.text = ""
       
        
    }
    
    
    @IBAction func loginAction(_ sender: Any) {
        
        if loginTextField.text == userName {
            performSegue(withIdentifier: "UserViewSegue", sender: nil)
        } else {
            print("userNameIsFalse")
        }
       
        
    }
    
    
    @IBAction func showLogin(_ sender: Any) {
        
        let showLogin = UIAlertController(title: "Your login name is", message: userName, preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: "ok", style: .cancel, handler: nil)

        showLogin.addAction(cancelAction)
        present(showLogin, animated: true, completion: nil)
        
    
    }
    
    @IBAction func showPassword(_ sender: Any) {
        
        let showLogin = UIAlertController(title: "Your password is", message: password, preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: "ok", style: .cancel, handler: nil)
        
        showLogin.addAction(cancelAction)
        present(showLogin, animated: true, completion: nil)
        
    }
    
}

extension ViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        if textField == passwordTextField {
            
            performSegue(withIdentifier: "UserViewSegue", sender: nil)
        
        } else if textField == loginTextField {
            passwordTextField.becomeFirstResponder()
        }
        
        return true
    }
    
}

