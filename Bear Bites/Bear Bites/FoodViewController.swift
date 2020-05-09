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
    var r = [PFObject]()
    var review: PFObject!
    var reviewCount = 0
    var ratingTotal = 0
    var avgRating = 0
    
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
            caloriesLabel.text = menu_item["calories"] as? String
            print(menu_item["nutrition"])
            if (menu_item["nutrition"] as! NSArray).contains("vegan") == false{
                print("vegan")
                veganLabel.text = " "
            }
            if (menu_item["nutrition"] as! NSArray).contains("dairy") == false{
                print("dairy")
                dairyLabel.text = " "
            }
            if (menu_item["nutrition"] as! NSArray).contains("vegetarian") == false{
                print("vegetarian")
                vegetarianLabel.text = " "
            }
            self.tableView.reloadData()
            
            // Do any additional setup after loading the view.
        }
        
        override func viewDidAppear(_ animated: Bool) {
            super.viewDidAppear(animated)
            
            let query = PFQuery(className: "Reviews")
            query.includeKeys(["author", "body", "menuItem", "likes", "dislikes", "date"])
            query.whereKey("menuItem", equalTo: menu_item)
            
            query.findObjectsInBackground {(r, error) in
                if r != nil {
                    self.r = r!
                    self.tableView.reloadData()
                }
            }
            reviewCount = r.count
            
            let query2 = PFQuery(className: "Reviews")
            query2.includeKeys(["author", "body", "menuItem", "likes", "dislikes", "date","rating"])
            query2.whereKey("menuItem", equalTo: menu_item)
            query2.limit = 2
            query2.findObjectsInBackground {(reviews, error) in
                if reviews != nil {
                    self.reviews = reviews!
                    self.tableView.reloadData()
                }
            }
            reviewCountLabel.text = String(reviewCount)
            print("reviews", r)
            for rev in r{
                self.ratingTotal += rev["rating"] as! Int
            }
            if reviewCount > 0{
                self.avgRating = (ratingTotal / reviewCount)
                print("avgRating", avgRating)
                print("allRate", ratingTotal)
                ratingTotal = 0
            }
            
            if avgRating as! Int == 0 {
                foodRating.image = UIImage(named: "zeroStar")
            }
            else if avgRating as! Int == 1 {
                foodRating.image = UIImage(named: "oneStar")
            }
            else if avgRating as! Int == 2 {
                foodRating.image = UIImage(named: "twoStar")
            }
            else if avgRating as! Int == 3 {
                foodRating.image = UIImage(named: "threeStar")
            }
            else if avgRating as! Int == 4 {
                foodRating.image = UIImage(named: "fourStar")
            }
            else if avgRating as! Int == 5 {
                foodRating.image = UIImage(named: "fiveStar")
            }
            
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
        
        if review["rating"] as! Int == 0 {
            cell.ratingImage.image = UIImage(named: "zeroStar")
        }
        else if review["rating"] as! Int == 1 {
            cell.ratingImage.image = UIImage(named: "oneStar")
        }
        else if review["rating"] as! Int == 2 {
            cell.ratingImage.image = UIImage(named: "twoStar")
        }
        else if review["rating"] as! Int == 3 {
            cell.ratingImage.image = UIImage(named: "threeStar")
        }
        else if review["rating"] as! Int == 4 {
            cell.ratingImage.image = UIImage(named: "fourStar")
        }
        else if review["rating"] as! Int == 5 {
            cell.ratingImage.image = UIImage(named: "fiveStar")
        }
        
        
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
