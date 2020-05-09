//
//  TopReviewsCell.swift
//  Bear Bites
//
//  Created by George Martin on 5/3/20.
//  Copyright © 2020 Bear-Bites. All rights reserved.
//

import UIKit

class TopReviewsCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBOutlet weak var ratingImage: UIImageView!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var reviewBody: UILabel!
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
