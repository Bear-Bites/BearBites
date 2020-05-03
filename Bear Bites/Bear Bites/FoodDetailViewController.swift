//
//  FoodDetailViewController.swift
//  Bear Bites
//
//  Created by user168008 on 4/12/20.
//  Copyright © 2020 Bear-Bites. All rights reserved.
//

import UIKit
import Parse
import AlamofireImage

class FoodDetailViewController: UIViewController {

    @IBOutlet weak var foodImage: UIImageView!
    
    @IBOutlet weak var foodLabel: UILabel!
    
    
    @IBOutlet weak var foodType1: UILabel!
    
    @IBOutlet weak var foodType2: UILabel!
    
    @IBOutlet weak var foodType3: UILabel!
    
    @IBOutlet weak var reviewLabel: UILabel!
    
    @IBAction func oneStar(_ sender: Any) {
    }
    
    @IBAction func twoStar(_ sender: Any) {
    }
    @IBAction func threeStar(_ sender: Any) {
    }
    @IBAction func fourStar(_ sender: Any) {
    }
    @IBAction func fiveStar(_ sender: Any) {
    }
    
    @IBAction func writeareview(_ sender: Any) {
    }
    @IBOutlet weak var foodRating: UIImageView!
    
    @IBAction func seeAllReviews(_ sender: Any) {
    }
    
    var menu_item: PFObject!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let imagePath = menu_item["image"] as! String
        let foodUrl = URL(string: imagePath)
        foodImage.af_setImage(withURL: foodUrl!)
        
        foodLabel.text = menu_item["title"] as? String
        
        
        
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        
        // Pass the selected object to the new view controller.
        
        print("loading up details screen")
        
        //find the selected movie
        
        //Pass selected movie to details view controller
        let postCommentViewController = segue.destination as! PostCommentViewController
        postCommentViewController.menu_item = menu_item
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
