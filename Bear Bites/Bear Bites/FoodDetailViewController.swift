//
//  FoodDetailViewController.swift
//  Bear Bites
//
//  Created by user168008 on 4/12/20.
//  Copyright © 2020 Bear-Bites. All rights reserved.
//

import UIKit

class FoodDetailViewController: UIViewController {

    @IBOutlet weak var foodImage: UIImageView!
    
    @IBOutlet weak var foodLabel: UILabel!
    
    
    @IBOutlet weak var foodType1: UILabel!
    
    @IBOutlet weak var foodType2: UILabel!
    
    @IBOutlet weak var foodType3: UILabel!
    
    @IBOutlet weak var reviewLabel: UILabel!
    
    @IBOutlet weak var reviewBox: UITextView!
    
    @IBOutlet weak var submitButton: UIButton!
    
    @IBOutlet weak var reviewStars: UIImageView!
    
    @IBOutlet weak var commentView: UITableView!
    @IBOutlet weak var foodRating: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
