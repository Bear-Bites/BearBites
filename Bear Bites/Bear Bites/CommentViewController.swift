//
//  CommentViewController.swift
//  Bear Bites
//
//  Created by George Martin on 5/3/20.
//  Copyright © 2020 Bear-Bites. All rights reserved.
//

import UIKit
import Parse
import AlamofireImage

class CommentViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var tableView: UITableView!
    var menu_item: PFObject!
    var reviews = [PFObject]()
    var review: PFObject!
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let query = PFQuery(className: "Reviews")
        query.includeKeys(["author", "body", "menuItem", "likes", "dislikes", "date"])
        query.whereKey("menuItem", equalTo: menu_item)
        
        query.findObjectsInBackground {(reviews, error) in
            if reviews != nil {
                self.reviews = reviews!
                self.tableView.reloadData()
            }
        }
        print("reviews", reviews)
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return reviews.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ReviewCell") as! ReviewCell
        
        let review = reviews[indexPath.row]
        
        let user = review["author"] as! PFUser
        cell.userNameLabel.text = user.username
        
        cell.reviewBodyLabel.text = review["body"] as? String
        cell.dateLabel.text = review["date"] as? String
//        cell.dislikesCount.text = "\(review["dislikes"]!)"
//        cell.likesCount.text = "\(review["likes"]!)"
        cell.dislikesCount.text = "0"
        cell.likesCount.text = "0"
        print("likes", review["likes"])
        
        if review["rating"] as! Int == 0 {
            cell.rating.image = UIImage(named: "zeroStar")
        }
        else if review["rating"] as! Int == 1 {
            cell.rating.image = UIImage(named: "oneStar")
        }
        else if review["rating"] as! Int == 2 {
            cell.rating.image = UIImage(named: "twoStar")
        }
        else if review["rating"] as! Int == 3 {
            cell.rating.image = UIImage(named: "threeStar")
        }
        else if review["rating"] as! Int == 4 {
            cell.rating.image = UIImage(named: "fourStar")
        }
        else if review["rating"] as! Int == 5 {
            cell.rating.image = UIImage(named: "fiveStar")
        }
        
        
        
        
        return cell
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
