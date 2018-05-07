//
//  BeverageCell.swift
//  AppBeverages
//
//  Created by MacAMP on 7/05/18.
//  Copyright © 2018 MacAMP. All rights reserved.
//

import UIKit

class BeverageCell: UITableViewCell {

    @IBOutlet weak var imgCell: UIImageView!
    @IBOutlet weak var lblCell: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
