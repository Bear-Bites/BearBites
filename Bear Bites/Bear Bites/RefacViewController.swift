//
//  RefacViewController.swift
//  Bear Bites
//
//  Created by George Martin on 4/12/20.
//  Copyright © 2020 Bear-Bites. All rights reserved.
//

import UIKit
import AlamofireImage
import Parse

class RefacViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate{
    @IBOutlet weak var collectionView: UICollectionView!
    
    var menu = [PFObject]()
    var reviews = [PFObject]()
    var avgRating = 0
    var ratingTotal = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        let layout = collectionView.collectionViewLayout as! UICollectionViewFlowLayout
        
        layout.minimumLineSpacing = 4
        layout.minimumInteritemSpacing = 4
        
        let width = (view.frame.size.width - layout.minimumInteritemSpacing * 2) / 3
        layout.itemSize = CGSize(width: width, height: width * 3 / 2)

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let query = PFQuery(className: "Menu")
        query.includeKeys(["title", "calories", "types", "nutrition", "image", "days"])
        query.limit = 114
        
        query.findObjectsInBackground {(menu, error) in
            if menu != nil {
                self.menu = menu!
                self.collectionView.reloadData()
            }
        }
        let query2 = PFQuery(className: "Reviews")
        query2.includeKeys(["menuItem", "rating"])
        
        query2.findObjectsInBackground {(reviews, error) in
            if reviews != nil {
                self.reviews = reviews!
            }
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        menu.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "RefacCollectionViewCell", for: indexPath) as! RefacCollectionViewCell
        let menu_item = menu[indexPath.item]
        let menu_item_title = menu_item["title"]
        let image = menu_item["image"]
        let url = URL(string: image as! String)!
        var revs = [PFObject]()
        print(url)
        cell.FoodImage.af_setImage(withURL: url)
        for review in reviews{
            if (review["menuItem"] as! PFObject).objectId == menu_item.objectId {
                revs.append(review)
            }
        }
        for rev in revs{
            self.ratingTotal += rev["rating"] as! Int
        }
        print(menu_item["title"])
        print("menu item",menu_item)
        print("reviews", revs)
        //print("all review", reviews)
        if revs.count > 0{
            self.avgRating = (ratingTotal / revs.count)
            print("avgRating", avgRating)
            print("allRate", ratingTotal)
            ratingTotal = 0
        }
        if avgRating as! Int == 0 {
            print("ZEROOO")
            cell.RatingImage.image = UIImage(named: "zeroStar")
        }
        else if avgRating as! Int == 1 {
            cell.RatingImage.image = UIImage(named: "oneStar")
        }
        else if avgRating as! Int == 2 {
            cell.RatingImage.image = UIImage(named: "twoStar")
        }
        else if avgRating as! Int == 3 {
            cell.RatingImage.image = UIImage(named: "threeStar")
        }
        else if avgRating as! Int == 4 {
            print("i am numbe four")
            cell.RatingImage.image = UIImage(named: "fourStar")
        }
        else if avgRating as! Int == 5 {
            cell.RatingImage.image = UIImage(named: "fiveStar")        }
        avgRating = 0
        cell.ReviewCountLabel.text = String(reviews.count)
        cell.MenuItemTitle.text = menu_item_title as? String
        
        return cell
    }
    
    
    @IBAction func onLogout(_ sender: Any) {
        print("logged out")
        PFUser.logOut()
        let main = UIStoryboard(name: "Main", bundle: nil)
        let loginViewController = main.instantiateViewController(withIdentifier: "LoginViewController")
        
        let sceneDelegate = self.view.window?.windowScene?.delegate as! SceneDelegate
        
        sceneDelegate.window?.rootViewController = loginViewController
    }


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            // Get the new view controller using segue.destination.
            
            // Pass the selected object to the new view controller.
            
            print("loading up details screen")
            
            //find the selected movie
            let cell = sender as! UICollectionViewCell
            let indexPath = collectionView.indexPath(for: cell)!
            let menu_item = menu[indexPath.item]
            
            //Pass selected movie to details view controller
            let foodViewController = segue.destination as! FoodViewController
            foodViewController.menu_item = menu_item
            
            collectionView.deselectItem(at: indexPath, animated: true)
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


