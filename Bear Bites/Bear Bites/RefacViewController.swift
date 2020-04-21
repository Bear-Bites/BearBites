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
    
    var menu_array = [[String:Any]]()
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
        NetworkManager.downloadRefacMenu { jsonData in
            guard let jData = jsonData else { return }
            
            do {
                if let json = try JSONSerialization.jsonObject(with: jData, options: []) as? [String: Any] {
                    self.menu_array = json["menu"] as! [[String:Any]]
                }
            }catch let err{
                print(err.localizedDescription)
            }
            self.collectionView.reloadData()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        menu_array.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "RefacCollectionViewCell", for: indexPath) as! RefacCollectionViewCell
        let menu_item = menu_array[indexPath.item]
        let menu_item_title = menu_item["title"]
        print(menu_item["image"])

        if let menu_item_image = URL(string: menu_item["image"] as! String)
        {
            cell.FoodImage.af_setImage(withURL: menu_item_image)
        }
        else
        {
            print("error!")
        }
        
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
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
