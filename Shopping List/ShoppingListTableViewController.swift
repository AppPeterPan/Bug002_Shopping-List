//
//  ShoppingListTableViewController.swift
//  Shopping List
//
//  Created by mac on 2017/8/25.
//  Copyright © 2017年 justwithin. All rights reserved.
//

import UIKit

class ShoppingListTableViewController: UITableViewController {
    
    
    
    var lists = [ List]()
    
    @IBOutlet var NameLabel: [UITextField]!

    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        navigationItem.title = "Shopping List"
        
        lists.append (List (name:"iMac", price: "NT72000", introduction: "iMac is a range of all-in-one Macintosh desktop computers designed", photo: #imageLiteral(resourceName: "imac")))
       
        lists.append (List(name: "iPhoneX",price: "NT35000", introduction: "Our vision has always been to create an iPhone that is entirely screen. One so immersive the device itself disappears into the experience.", photo:#imageLiteral(resourceName: "iphoneX")))
        
        lists.append (List(name: "iPad", price: "NT 12000", introduction: "An iPad can shoot video, take photos, play music, and perform Internet functions such as web-browsing and emailing. Other functions – games, reference, GPS navigation, social networking, etc.", photo:#imageLiteral(resourceName: "ipad")))
        
        for (i, NameLabel) in NameLabel.enumerated() {
            NameLabel.text = lists[i].name
            
        }
        
    }
     override  func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            
        }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        _ = segue.destination as? itemTableViewController
        if let indexPath = tableView.indexPathForSelectedRow {
            itemTableViewController?.list = lists[indexPath.row]
        }
        
    }


        struct List {
            
            var name = String()
            var price = String()
            var introduction = String ()
            var photo = UIImage ()
        }
        
    }

struct List {
    
    var name = String()
    var price = String()
    var introduction = String ()
    var photo = UIImage ()
    
}
  


// Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem


//override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
   // let ShoppingListTableController = segue.destination as? DetailsController
   // if let indexPath = tableView.indexPathForSelectedRow {
     //   DetailsController?.list= details[indexPath.row]
//

        // Dispose of any resources that can be recreated.


    // MARK: - Table view data source

    //override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
      //  return 0


    //override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
      //  return 0


    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


