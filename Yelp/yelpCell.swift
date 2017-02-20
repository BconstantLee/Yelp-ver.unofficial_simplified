//
//  yelpCell.swift
//  Yelp
//
//  Created by Bconsatnt on 2/19/17.
//  Copyright © 2017 Timothy Lee. All rights reserved.
//

import UIKit

class yelpCell: UITableViewCell {

    @IBOutlet weak var imageCell: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ratingImage: UIImageView!
    @IBOutlet weak var distanceLabel: UILabel!
    @IBOutlet weak var reviewLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    var business: Business! {
        didSet{
            nameLabel.text = business.name
            nameLabel.sizeToFit()
            imageCell.setImageWith(business.imageURL!)
            addressLabel.text = business.address
            addressLabel.sizeToFit()
            distanceLabel.text = business.distance
            distanceLabel.sizeToFit()
            reviewLabel.text = "\(business.reviewCount!) Reviews"
            reviewLabel.sizeToFit()
            categoryLabel.text = business.categories
            categoryLabel.sizeToFit()
            ratingImage.setImageWith(business.ratingImageURL!)
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        imageCell.layer.cornerRadius = 3
        imageCell.clipsToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
