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

class FoodViewController: UIViewController,  UITableViewDataSource, UITableViewDelegate{
    
    
    @IBOutlet weak var foodImage: UIImageView!
    @IBOutlet weak var foodLabel: UILabel!
    @IBOutlet weak var veganLabel: UILabel!
    @IBOutlet weak var dairyLabel: UILabel!
    @IBOutlet weak var vegetarianLabel: UILabel!
    @IBOutlet weak var reviewCountLabel: UILabel!
    @IBOutlet weak var caloriesLabel: UILabel!
    @IBOutlet weak var foodRating: UIImageView!
    
    
    var menu_item: PFObject!
    var reviews = [PFObject]()
    var review: PFObject!
    var reviewCount: Int!
    @IBOutlet weak var tableView: UITableView!
    
        override func viewDidLoad() {
            super.viewDidLoad()
            super.viewDidLoad()
            tableView.delegate = self
            tableView.dataSource = self
            
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
            
            
            
            query.limit = 2
            query.findObjectsInBackground {(reviews, error) in
                if reviews != nil {
                    self.reviews = reviews!
                    self.tableView.reloadData()
                }
            }
            print("reviews", reviewCount)
        }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return reviews.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TopReviewCell") as! TopReviewsCell
        
        let review = reviews[indexPath.row]
        
        let user = review["author"] as! PFUser
        cell.userNameLabel.text = user.username
        cell.reviewBody.text = review["body"] as? String
        
        
        return cell
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
