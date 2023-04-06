//
//  tela03.swift
//  atividadeDeNavegacao1
//
//  Created by Mikael Rodrigues on 06/04/23.
//

import UIKit

class tela03: UIViewController {

    
    @IBOutlet weak var voltarTela03Button: UIButton!
    
    @IBOutlet weak var avancarTela03Button: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        configVoltarTela03Button()
        configAvancarTela03Button()
    }
    
    @IBAction func voltarTela03Button(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    
    
    @IBAction func avancarTela03Button(_ sender: UIButton) {
        
        let vc: UIViewController? = UIStoryboard(name: "tela04", bundle: nil).instantiateViewController(withIdentifier: "tela04") as? tela04
        navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
    }
    
    
    func configVoltarTela03Button(){
        voltarTela03Button.titleLabel?.text = "Voltar"
    }
    
    func configAvancarTela03Button(){
        
        avancarTela03Button?.setTitle("ir tela04", for: .normal)
    }
}
