//
//  FoodViewController.swift
//  Bear Bites
//
//  Created by George Martin on 5/3/20.
//  Copyright © 2020 Bear-Bites. All rights reserved.
//

import UIKit
import Parse
import AlamofireImage

class FoodViewController: UIViewController {
    
    @IBOutlet weak var foodImage: UIImageView!
        @IBOutlet weak var foodLabel: UILabel!
        @IBOutlet weak var veganLabel: UILabel!
        @IBOutlet weak var dairyLabel: UILabel!
        @IBOutlet weak var vegetarianLabel: UILabel!
        @IBOutlet weak var reviewCount: UILabel!
        @IBOutlet weak var caloriesLabel: UILabel!
        @IBOutlet weak var foodRating: UIImageView!
        
        
        var menu_item: PFObject!
        var reviews = [PFObject]()
        var review: PFObject!
        
        override func viewDidLoad() {
            super.viewDidLoad()
            let imagePath = menu_item["image"] as! String
            let foodUrl = URL(string: imagePath)
            foodImage.af_setImage(withURL: foodUrl!)
            
            foodLabel.text = menu_item["title"] as? String
            
            
            
            // Do any additional setup after loading the view.
        }
        
        override func viewDidAppear(_ animated: Bool) {
            super.viewDidAppear(animated)
            
            let query = PFQuery(className: "Reviews")
            query.includeKeys(["author", "body", "menuItem", "likes", "dislikes", "date"])
            query.whereKey("menuItem", equalTo: menu_item)
            
            query.findObjectsInBackground {(reviews, error) in
                if reviews != nil {
                    self.reviews = reviews!
                }
            }
            print("reviews", reviews.count)
        }
        
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            // Get the new view controller using segue.destination.
            
            // Pass the selected object to the new view controller.
            
            print("loading up details screen")
            if segue.identifier == "postCommentView" {
                let postCommentViewController = segue.destination as! PostCommentViewController
                postCommentViewController.menu_item = menu_item
            }
            
            else if segue.identifier == "commentDetailView" {
                let commentViewController = segue.destination as! CommentViewController
                commentViewController.menu_item = menu_item
            }
            
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
