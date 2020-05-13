//
//  PostCommentViewController.swift
//  Bear Bites
//
//  Created by George Martin on 5/1/20.
//  Copyright © 2020 Bear-Bites. All rights reserved.
//

import UIKit
import AlamofireImage
import Parse

class PostCommentViewController: UIViewController, UINavigationControllerDelegate {

    var menu_item: PFObject!
    var rating = 0

    @IBOutlet weak var ratingImage: UIImageView!
    
    @IBAction func onOneStar(_ sender: Any) {
        rating = 1
        ratingImage.image = UIImage(named: "oneStar")
    }
    @IBAction func onTwoStar(_ sender: Any) {
        rating = 2
        ratingImage.image = UIImage(named: "twoStar")
    }
    @IBAction func onThreeStar(_ sender: Any) {
        rating = 3
        ratingImage.image = UIImage(named: "threeStar")
    }
    @IBAction func onFourStar(_ sender: Any) {
        rating = 4
        ratingImage.image = UIImage(named: "fourStar")
    }
    @IBAction func onFiveStar(_ sender: Any) {
        rating = 5
        ratingImage.image = UIImage(named: "fiveStar")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var commentField: UITextField!
    
    @IBAction func onSubmitButton(_ sender: Any) {
        let review = PFObject(className: "Reviews")
        print("menu item", menu_item?.objectId as Any)
        review["body"] = commentField.text
        review["author"] = PFUser.current()
        review["menuItem"] = menu_item
        review["likes"] = 0
        review["dislikes"] = 0
        review["date"] = "05/09/2020"
        review["rating"] = rating
        
        review.saveInBackground{ (success, error) in
            if success {
                self.dismiss(animated: true, completion: nil)
                print("saved")
            }else{
                print("error")
            }
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
