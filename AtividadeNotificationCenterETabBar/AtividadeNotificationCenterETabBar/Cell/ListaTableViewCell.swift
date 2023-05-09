//
//  ListaTableViewCell.swift
//  AtividadeNotificationCenterETabBar
//
//  Created by Mikael Rodrigues on 08/05/23.
//

import UIKit

class ListaTableViewCell: UITableViewCell {

    @IBOutlet weak var nomeLabel: UILabel!
    
    static let identifier = "ListaTableViewCell"
    static func nib() -> UINib{
        return UINib(nibName: "ListaTableViewCell", bundle: nil)
       
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    public func setupCell(person: Person){
        nomeLabel.text = person.name
    }
}
