//
//  tela02.swift
//  atividadeDeNavegacao1
//
//  Created by Mikael Rodrigues on 05/04/23.
//


import UIKit




class tela02: UIViewController {
  
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var backButton: UIButton!
    var name: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = name 
        configBackButton()
        title = "Tela02"
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
