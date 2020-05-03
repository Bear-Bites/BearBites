//
//  ReviewCell.swift
//  Bear Bites
//
//  Created by George Martin on 5/1/20.
//  Copyright © 2020 Bear-Bites. All rights reserved.
//

import UIKit

class ReviewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var reviewBodyLabel: UILabel!
    @IBOutlet weak var likesCount: UILabel!
    @IBOutlet weak var dislikesCount: UILabel!
    @IBOutlet weak var rating: UIImageView!
    @IBOutlet weak var dateLabel: UILabel!
    
    
    @IBAction func likeButton(_ sender: Any) {
    }
    
    @IBAction func dislikeButton(_ sender: Any) {
    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
