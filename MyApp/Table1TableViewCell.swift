//
//  Table1TableViewCell.swift
//  MyApp
//
//  Created by NDHU_CSIE on 2019/12/18.
//  Copyright © 2019 NDHU_CSIE. All rights reserved.
//

import UIKit

class Table1TableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var thumbnailTableView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    
    @IBOutlet weak var descLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
