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
        cell.dislikesCount.text = review["dislikes"] as? String
        cell.likesCount.text = review["likes"] as? String
        
        
        
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
