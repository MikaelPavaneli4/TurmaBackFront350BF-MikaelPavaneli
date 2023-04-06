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
        
        navigationController?.popViewController(animated: true)
        
    }
    
    @IBAction func avancarTela02Button(_ sender: UIButton) {
        
        let vc: UIViewController? = UIStoryboard(name: "tela03", bundle: nil).instantiateViewController(withIdentifier: "tela03") as? tela03
        navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
        
    }
    func configBackButton() {
        
        backButton.setTitle("Voltar", for: .normal)
        
        
    }
    
    
   
    
}
