//
//  Tela02ViewController.swift
//  Protocolo
//
//  Created by Mikael Rodrigues on 24/05/23.
//

import UIKit


class Tela02ViewController: UIViewController {

    let identifier = "Tela02ViewController"
    
    @IBOutlet weak var nomeLabel: UILabel!
    @IBOutlet weak var avancarButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
//addObserver()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func tappedAvancarButton(_ sender: UIButton) {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: ViewController.identifier) as? ViewController
        present(vc ?? UIViewController(), animated: true)
        vc?.delegate = self
    }
    
//    private func addObserver() {
//        NotificationCenter.default.addObserver(self, selector: #selector(cadastrarNome), name: .nome, object: nil)
//    }
//
//    @objc func cadastrarNome(_ notification: NSNotification){
//        let texto = notification.object as? String
//        nomeLabel.text = texto
//        view.backgroundColor = .red
//    }

}


extension Tela02ViewController: ViewControllerProtocol {
    func texte(nome: String) {
        nomeLabel.text = nome
    }
    
   
    func tappedAdicionarButton() {
        view.backgroundColor = .blue
      //  nomeLabel.text = "Protocolo é foda"
    }
    
}
