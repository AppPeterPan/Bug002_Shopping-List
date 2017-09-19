//
//  itemTableViewController.swift
//  Shopping List
//
//  Created by mac on 2017/9/19.
//  Copyright © 2017年 justwithin. All rights reserved.
//

import UIKit


 class itemTableViewController: UITableViewController

{
    var list: List?
    
 
    @IBOutlet weak var photoImage: UIImageView!
    
    @IBOutlet weak var priceLabel: UITextField!
    @IBOutlet weak var introductionLabel: UITextView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let list = list {
            navigationItem.title = list.name
            priceLabel.text = list.price
            introductionLabel.text = list.introduction
            photoImage.image = list.photo
        } else {
            navigationItem.title = "New item"
        }
    }
    
   /* override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let editMemberController = segue.destination as? EditMemberController
        editMemberController?.member = self.member
    }
    */
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    struct List {
        
        var name = String()
        var price = String()
        var introduction = String ()
        var photo = UIImage ()
}
}
