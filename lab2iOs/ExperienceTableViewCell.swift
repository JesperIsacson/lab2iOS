//
//  ExperienceTableViewCell.swift
//  lab2iOs
//
//  Created by Ulf Jesper Isacson on 2019-11-08.
//  Copyright © 2019 Jesper Isacson. All rights reserved.
//

import UIKit

class ExperienceTableViewCell: UITableViewCell
{
    @IBOutlet weak var coverImageView: UIImageView!
    
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}


