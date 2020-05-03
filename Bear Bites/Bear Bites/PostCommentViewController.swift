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
        review["menuItemId"] = menu_item?.objectId
        //review["menuItemId"] = menu_item["__id"]
        
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
