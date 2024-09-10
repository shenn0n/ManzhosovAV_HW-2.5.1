//
//  ViewController.swift
//  ManzhosovAV_HW 2.5.1
//
//  Created by Александр Манжосов on 09.09.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var UserNameTF: UITextField!
    @IBOutlet var PasswordTF: UITextField!
    
    private let name = "Dariia"
    private let password = "15112021"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let secondVC = segue.destination as! SecondViewController
        secondVC.name = UserNameTF.text
    }
    
    @IBAction func logInBut() {
        guard let inputText = UserNameTF.text, !inputText.isEmpty else {
            showAlert(title: "Please", message: "enter yuor name")
            return
        }
        guard let inputText = PasswordTF.text, !inputText.isEmpty else {
            showAlert(title: "Please", message: "enter yuor password")
            return
        }
        guard UserNameTF.text == name else {
            UserNameTF.text = ""
            showAlert(title: "", message: "wrong name")
            return
        }
        guard PasswordTF.text == password else {
            PasswordTF.text = ""
            showAlert(title: "", message: "wrong password")
            return
        }
        
        performSegue(withIdentifier: "secondVCSegue", sender: nil)
    }
    
    @IBAction func forgotBut(_ sender: UIButton) {
        switch sender.tag {
        case 1:
            showAlert(title: "Oops", message: "Your name is Dariia 😉")
        case 2:
            showAlert(title: "Oops", message: "Your password is 15112021 😉")
        default:
            return
        }
    }
    @IBAction func unwind(segue: UIStoryboardSegue) {
        UserNameTF.text = ""
        PasswordTF.text = ""
    }
}


extension ViewController {
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        
        present(alert, animated: true)
    }
}



