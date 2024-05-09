//
//  profileRecipes.swift
//  Saviori_App
//
//  Created by 2b on 4/26/24.
//

import Foundation

import UIKit

class profileTableViewCell: UITableViewCell {

    
    @IBOutlet var imageS: UIImageView!
    
    @IBOutlet var star: UIImageView!
    
    @IBOutlet var descriptionLabel: UILabel!
    
    @IBOutlet var recipeName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        imageS.layer.masksToBounds = true
        imageS.layer.borderWidth = 1.5
        imageS.layer.borderColor = UIColor.systemOrange.cgColor
        imageS.layer.cornerRadius = imageS.bounds.width / 6
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
}
