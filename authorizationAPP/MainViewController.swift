//
//  ViewController.swift
//  authorizationAPP
//
//  Created by user on 17.02.2022.
//

import UIKit

class MainViewController: UIViewController {
    
//MARK: - IBOutlets
    @IBOutlet weak var loginTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    private let login = "danil"
    private let password = "2802"
    
    
//MARK: - Override funcs
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if loginTF.text == login && passwordTF.text == password {
            guard let authVC = segue.destination as? AuthrizedViewController else { return }
            authVC.welcomeName = login
            
        } else {
            showAllert(title: "Damn!", message: "Wrong login or password!")
        }
    }
    
    
//MARK: - IBActions
    @IBAction func forgorButtonPressed(_ sender: UIButton) {
        if sender.tag == 1 {
            showAllert(title: "Ooops...", message: "Your name is \(login) 😉")
        } else if sender.tag == 2 {
            showAllert(title: "Ooops...", message: "Your password is \(password) 😉")
        }
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        loginTF.text = ""
        passwordTF.text = ""
        dismiss(animated: true)
    }
    
}

//MARK: - Extensions

extension MainViewController {
    private func showAllert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
