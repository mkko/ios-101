//
//  MealTableViewCell.swift
//  FoodTracker
//
//  Created by Mikko Välimäki on 2019-05-22.
//  Copyright © 2019 Mikko Välimäki. All rights reserved.
//

import Cosmos

class MealTableViewCell: UITableViewCell {

    //MARK: Properties
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var ratingControl: CosmosView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code

        ratingControl.isUserInteractionEnabled = false
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
