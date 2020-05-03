//
//  CommentDetailViewController.swift
//  Bear Bites
//
//  Created by user167669 on 4/28/20.
//  Copyright © 2020 Bear-Bites. All rights reserved.
//

import UIKit
import Parse
import AlamofireImage
class CommentDetailViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    var menu_item: PFObject!
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBAction func likeButton(_ sender: Any) {
        
    
    }
    
    
    
    @IBAction func dislikeButton(_ sender: Any) {
    }
    
    var like:Bool = false
    var dislike:Bool = false
    
    func setLike(_ isLiked:Bool){
        like = isLiked
        if(like){
            // like button imagelikeButton.setImage()
        }
    }
    
    func setDislike(_ isDisliked:Bool){
        dislike = isDisliked
        if(dislike){
            //dislike button image imagedislikeButton.setImage()
        }
    }
    
    var posts = [PFObject]()
        override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.delegate = self

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let query = PFQuery(className:"posts")
        query.includeKey("author")
        query.limit = 20
        
        query.findObjectsInBackground { (posts, error) in
            if posts != nil {
                self.posts = posts!
                self.tableView.reloadData()
            }
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PostCell") as! ReviewCell
        
        
        let post = posts[indexPath.row]
        
        let user = post["author"] as! PFUser
        cell.userNameLabel.text = user.username
        
        cell.reviewBodyLabel.text = post["comment"] as? String
        
        let imageFile = post["image"] as! PFFileObject

        let urlString = imageFile.url!
        let url = URL(string: urlString)!
        
        //cell.photoView.af_setImage(withURL: url)
        
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
