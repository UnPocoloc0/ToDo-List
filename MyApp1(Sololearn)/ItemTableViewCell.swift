//
//  ItemTableViewCell.swift
//  MyApp1(Sololearn)
//
//  Created by Juuso Loikkanen on 8.11.2022.
//  Copyright © 2022 Simo Loikkanen. All rights reserved.
//

import UIKit

class ItemTableViewCell: UITableViewCell {
    
    
   
    @IBOutlet weak var nameLabel: UILabel!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
