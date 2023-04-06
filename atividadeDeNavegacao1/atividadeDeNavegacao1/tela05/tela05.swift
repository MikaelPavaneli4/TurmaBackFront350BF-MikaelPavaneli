//
//  tela05.swift
//  atividadeDeNavegacao1
//
//  Created by Mikael Rodrigues on 06/04/23.
//

import UIKit

class tela05: UIViewController {

   
    @IBOutlet weak var voltarTela05Button: UIButton!
    
    
    @IBOutlet weak var avancarTela05Button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configVoltarTela05Button()
        configAvancarTela05Button()
        title = "Tela05"
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func voltarTela05Button(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    
    
    @IBAction func avancarTela05Button(_ sender: UIButton) {
        
        let vc: UIViewController? = UIStoryboard(name: "tela06", bundle: nil).instantiateViewController(withIdentifier: "tela06") as? tela06
        navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
    }
    
    func configVoltarTela05Button(){
        
        voltarTela05Button.titleLabel?.textColor = .black
    }
    
    func configAvancarTela05Button(){
        
        avancarTela05Button?.setTitle("ir tela06", for: .normal)
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
