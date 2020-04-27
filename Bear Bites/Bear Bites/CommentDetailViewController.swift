//
//  CommentDetailViewController.swift
//  Bear Bites
//
//  Created by user168008 on 4/18/20.
//  Copyright © 2020 Bear-Bites. All rights reserved.
//

import UIKit
import Parse

class CommentDetailV_iewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var postCell: UITableViewCell!
    
   
    @IBOutlet weak var authorName: UILabel!
    
    @IBOutlet weak var authorComment: UILabel!
    
    @IBOutlet weak var authorPicture: UIImageView!
    
    @IBOutlet weak var foodRating: UIImageView!
    
    @IBAction func filterControl(_ sender: Any) {
    }
    
    var comments = [PFObject]()
    override func viewDidLoad() {
        super.viewDidLoad()

    }
//    func tableView(_ tableView:UITableView,numberOfRowsInSection section: Int)->Int{
//        return comments.count
//    }
//
//    func tableView(_ tableView:UITableView,cellForRowAt indexPath:IndexPath)->UITableViewCell{
//        let cell = tableView.dequeueReusableCell(withIdentifier: "CommentCell")as! CommentCell
//
//        let comment = comments[indexPath.row]
//
//        let user = comment["author"] as! PFUser
//        cell.autherLabel.text = user
//
//        return cell
//    }
//
//    override func viewDidAppear(_ animated:Bool){
//        super.viewDidAppear(animated)
//        let query = PFQuery(className:"Comments")
//        query.includeKey("author")
//        query.limit = 20
//
//
//        query.findObjectsInBackground{ (comments,error) in
//            if posts !=nil{
//                self.comments = comments!
//                self.tableView.reloadData()
//            }
//        }
//
//    }
//
//
//
//        // Do any additional setupafter loading the view.
//    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
