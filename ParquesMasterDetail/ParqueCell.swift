//
//  ParqueCell.swift
//  ParquesMasterDetail
//
//  Created by Usuario on 21/03/2024.
//  Copyright © 2024 Usuario. All rights reserved.
//

import UIKit

class ParqueCell: UITableViewCell {
    
    @IBOutlet weak var lblnombrecell: UILabel!
    @IBOutlet weak var ivparquecell: UIImageView!
    override func awakeFromNib() {
	        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
