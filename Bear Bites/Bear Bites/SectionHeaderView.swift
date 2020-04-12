//
//  SectionHeaderView.swift
//  Bear Bites
//
//  Created by George Martin on 4/12/20.
//  Copyright © 2020 Bear-Bites. All rights reserved.
//

import Foundation
import UIKit

class SectionHeaderView: UICollectionReusableView{
    @IBOutlet weak var categoryTitleLabel: UILabel!
    
    var catergoryTitle: String! {
        didSet {
            categoryTitleLabel.text = catergoryTitle
        }
    }
}
