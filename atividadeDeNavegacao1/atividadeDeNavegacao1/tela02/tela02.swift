//
//  tela02.swift
//  atividadeDeNavegacao1
//
//  Created by Mikael Rodrigues on 05/04/23.
//


import UIKit




class tela02: UIViewController {
  
    
    @IBOutlet weak var backButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        configBackButton()
        }
    
    @IBAction func backButton(_ sender: UIButton) {
        
        dismiss(animated: true)
        
    }
    
    func configBackButton() {
        
        backButton.titleLabel?.text = "Voltar"
        
        
    }
    
    
   
    
}
