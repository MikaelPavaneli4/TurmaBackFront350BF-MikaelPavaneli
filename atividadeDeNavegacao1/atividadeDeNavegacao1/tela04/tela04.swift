//
//  tela04.swift
//  atividadeDeNavegacao1
//
//  Created by Mikael Rodrigues on 06/04/23.
//

import UIKit

class tela04: UIViewController {

    @IBOutlet weak var avancarTela04Button: UIButton!
   
    @IBOutlet weak var voltarTela04Button: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        configVoltarTela04Button()
        configAvancarTela04Button()
        // Do any additional setup after loading the view.
    }
    

   
    @IBAction func voltarTela04Button(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    
    func configVoltarTela04Button() {
        voltarTela04Button?.setTitle("Voltar", for: .normal)
    
    }
   
    func configAvancarTela04Button(){
        
        avancarTela04Button?.setTitle("ir tela05", for: .normal)
        
        
    }
    @IBAction func avancarTela04Button(_ sender: Any) {
        let vc: UIViewController? = UIStoryboard(name: "tela05", bundle: nil).instantiateViewController(withIdentifier: "tela05") as? tela05
        navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
    }
    
}
