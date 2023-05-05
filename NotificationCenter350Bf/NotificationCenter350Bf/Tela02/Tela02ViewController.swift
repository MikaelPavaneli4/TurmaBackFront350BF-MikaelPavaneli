//
//  Tela02ViewController.swift
//  NotificationCenter350Bf
//
//  Created by Mikael Rodrigues on 04/05/23.
//

import UIKit

class Tela02ViewController: UIViewController {

    @IBOutlet weak var macbookButton: UIButton!
    
    @IBOutlet weak var computadorButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func tappedMacbookButton(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
    @IBAction func tappedComputadorButton(_ sender: UIButton) {
        dismiss(animated: true)
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
