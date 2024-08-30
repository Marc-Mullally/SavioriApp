//
//  signIn.swift
//  SavioriApp
//
//  Created by 2b on 5/10/24.
//

import Foundation
import UIKit

class signUp : UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    var dataBase : [AccountInformation] = []
    
    @IBOutlet var firstNameTextField: UITextField!
    
    @IBOutlet var lastNameTextField: UITextField!
    
    @IBOutlet var emailTextField: UITextField!
    
    @IBOutlet var usernameTextField: UITextField!
    
    @IBOutlet var phoneNumberTextField: UITextField!
    
    @IBOutlet var passwordTextField: UITextField!
    
    @IBOutlet var repasswordTextField: UITextField!
    
    @IBAction func signUpClicked(_ sender: Any) {
        guard let username = usernameTextField.text,
                  let password = passwordTextField.text,
                  let firstName = firstNameTextField.text,
                  let lastName = lastNameTextField.text,
                  let email = emailTextField.text,
                  let phoneNumberText = phoneNumberTextField.text,
                  let phoneNumber = Int(phoneNumberText),
                  isValidEmail(email: email),
                  isValidPhoneNumber(phoneNumber: phoneNumber) else {
                let alert = UIAlertController(title: "Error", message: "Please fill in all fields correctly.", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "OK", style: .default))
                present(alert, animated: true)
                return
            }
            var account = AccountInformation(user: username, password: password, fullname: "\(firstName) \(lastName)", email: email, phoneNumber: phoneNumber)
        
        dataBase.append(account)
        performSegue(withIdentifier: "signUp", sender: sender)
        }

        func isValidEmail(email: String) -> Bool {
            let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
            let emailPredicate = NSPredicate(format:"SELF MATCHES %@", emailRegex)
            return emailPredicate.evaluate(with: email)
        }

        func isValidPhoneNumber(phoneNumber: Int) -> Bool {
            let phoneNumberRegex = "^[0-9]{10}$"
            let phoneNumberPredicate = NSPredicate(format: "SELF MATCHES %@", phoneNumberRegex)
            return phoneNumberPredicate.evaluate(with: String(phoneNumber))
        }
      
    
    @IBAction func backToLogin(_ sender: Any) {
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destinationController = segue.destination as? Profile {
            destinationController.tempUser = dataBase[0]
        }
    }
    
}
