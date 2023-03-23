//
//  ViewController.swift
//  exercicioUITextField2
//
//  Created by Mikael Rodrigues on 23/03/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cadastroButton: UIButton!
    @IBOutlet weak var confirmarSenhaTextField: UITextField!
    @IBOutlet weak var senhaTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextField.delegate = self
        senhaTextField.delegate = self
        emailTextField.delegate = self
        confirmarSenhaTextField.delegate = self
        nameTextField.placeholder = "Coloque seu nome"
        emailTextField.placeholder = "Coloque seu email"
        senhaTextField.placeholder = "Coloque sua senha"
        nameTextField.layer.borderWidth = 2
        nameTextField.layer.borderColor = UIColor.red.cgColor
        senhaTextField.layer.borderWidth = 2
        senhaTextField.layer.borderColor = UIColor.red.cgColor
        emailTextField.layer.borderWidth = 2
        emailTextField.layer.borderColor = UIColor.red.cgColor
        view.layer.backgroundColor = UIColor.black.cgColor
        cadastroButton.isEnabled = false
        confirmarSenhaTextField.placeholder = "Confirme sua senha"
        confirmarSenhaTextField.layer.borderWidth = 2
        confirmarSenhaTextField.layer.borderColor = UIColor.red.cgColor
    }
    
    @IBAction func cadastroButton(_ sender: UIButton) {
        print("Cadastro realizado com sucesso")
    }
    
}

extension ViewController: UITextFieldDelegate {
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("textFieldDidBeginEditing")
        if textField == nameTextField{
            nameTextField.layer.borderColor = UIColor.blue.cgColor
        }else if textField == emailTextField{
            emailTextField.layer.borderColor = UIColor.blue.cgColor
        }else if textField == senhaTextField{
            senhaTextField.layer.borderColor = UIColor.blue.cgColor
        }else{
            confirmarSenhaTextField.layer.borderColor = UIColor.blue.cgColor
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
        if confirmarSenhaTextField.hasText == true {
            confirmarSenhaTextField.layer.borderColor = UIColor.lightGray.cgColor
        }else{
            confirmarSenhaTextField.layer.borderColor = UIColor.red.cgColor
        }
        if confirmarSenhaTextField.text == senhaTextField.text && confirmarSenhaTextField.hasText == true && senhaTextField.hasText == true {
            senhaTextField.layer.borderColor = UIColor.lightGray.cgColor
            confirmarSenhaTextField.layer.borderColor = UIColor.lightGray.cgColor
        }else{
            senhaTextField.layer.borderColor = UIColor.red.cgColor
            confirmarSenhaTextField.layer.borderColor = UIColor.red.cgColor
        }
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("textFieldShouldReturn")
        textField.resignFirstResponder()
        if nameTextField.hasText == true && emailTextField.hasText == true && senhaTextField.hasText == true && confirmarSenhaTextField.hasText == true && confirmarSenhaTextField.text == senhaTextField.text{
            cadastroButton.isEnabled = true
        }else{
            cadastroButton.isEnabled = false
        }
            return true
        
        
    }
    
}
