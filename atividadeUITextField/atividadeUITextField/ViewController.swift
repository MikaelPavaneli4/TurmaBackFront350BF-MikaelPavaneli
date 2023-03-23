//
//  ViewController.swift
//  atividadeUITextField
//
//  Created by Mikael Rodrigues on 22/03/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var cadastroButton: UIButton!
    @IBOutlet weak var senhaTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextField.delegate = self
        senhaTextField.delegate = self
        emailTextField.delegate = self
        nameTextField.placeholder = "Coloque seu nome"
        emailTextField.placeholder = "Coloque seu email"
        senhaTextField.placeholder = "Coloque sua senha"
        nameTextField.layer.borderWidth = 2
        nameTextField.layer.borderColor = UIColor.lightGray.cgColor
        senhaTextField.layer.borderWidth = 2
        senhaTextField.layer.borderColor = UIColor.lightGray.cgColor
        emailTextField.layer.borderWidth = 2
        emailTextField.layer.borderColor = UIColor.lightGray.cgColor
        view.layer.backgroundColor = UIColor.black.cgColor
        cadastroButton.isEnabled = false
    }

    @IBAction func cadastroButton(_ sender: UIButton) {
        print("cadastro realizado com sucesso")
    }
    
}


extension ViewController: UITextFieldDelegate {
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("textFieldDidBeginEditing")
        if textField == nameTextField{
            nameTextField.layer.borderColor = UIColor.blue.cgColor
        }else if textField == emailTextField{
            emailTextField.layer.borderColor = UIColor.blue.cgColor
        }else{
            senhaTextField.layer.borderColor = UIColor.blue.cgColor
        }
        
        
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        print("textFieldDidEndEditin")
        
            if nameTextField.hasText == true  {
                nameTextField.layer.borderColor = UIColor.lightGray.cgColor
                }else{
                nameTextField.layer.borderColor = UIColor.red.cgColor
            }
        
        
            if emailTextField.hasText == true{
                emailTextField.layer.borderColor = UIColor.lightGray.cgColor
            }else{
                emailTextField.layer.borderColor = UIColor.red.cgColor
            }
        
        
        if senhaTextField.hasText == true{
            senhaTextField.layer.borderColor = UIColor.lightGray.cgColor
        }else{
            senhaTextField.layer.borderColor = UIColor.red.cgColor
        }
        
        if nameTextField.hasText == true && emailTextField.hasText == true && senhaTextField.hasText == true{
            cadastroButton.isEnabled = true
        }else{
            cadastroButton.isEnabled = false
        }
    
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("textFieldShouldReturn")
        
        if textField == nameTextField{
            emailTextField.becomeFirstResponder()
        }else if textField == emailTextField{
            senhaTextField.becomeFirstResponder()
        }else{
            textField.resignFirstResponder()
            
        }
            return true
        
        
    }
    
}
