//
//  CarTableViewCell.swift
//  Favourite Car
//
//  Created by Md Zahidul Islam Mazumder on 9/1/19.
//  Copyright © 2019 Md Zahidul islam. All rights reserved.
//

import UIKit

class CarTableViewCell: UITableViewCell {

    @IBOutlet weak var carImgView: UIImageView!
    @IBOutlet weak var backLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        backLabel.layer.cornerRadius = 10
        backLabel.layer.borderColor = UIColor.darkGray.cgColor
        backLabel.layer.borderWidth = 3
        backLabel.clipsToBounds = true
        
        numberLabel.layer.cornerRadius = 17.5
        numberLabel.layer.borderColor = UIColor.black.cgColor
        numberLabel.layer.borderWidth = 3
        numberLabel.clipsToBounds = true
        
        titleLabel.layer.cornerRadius = 10
        titleLabel.layer.borderColor = UIColor.darkGray.cgColor
        titleLabel.layer.borderWidth = 3
        titleLabel.clipsToBounds = true

        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
