//
//  CarTableViewController.swift
//  Favourite Car
//
//  Created by Md Zahidul Islam Mazumder on 5/1/19.
//  Copyright © 2019 Md Zahidul islam. All rights reserved.
//

import UIKit

var imageArray = [UIImage]()
var namesArray = [String]()
var name = ""

class CarTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return imageArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "carCel", for: indexPath) as! CarTableViewCell

        //let carImgView = cell.viewWithTag(10) as! UIImageView
        cell.carImgView.image = imageArray[indexPath.row]
        
        //let backLabel = cell.viewWithTag(11) as! UILabel
//        backLabel.layer.cornerRadius = 10
//        backLabel.layer.borderColor = UIColor.darkGray.cgColor
//        backLabel.layer.borderWidth = 3
//        backLabel.clipsToBounds = true
        
        //let numberLabel = cell.viewWithTag(12) as! UILabel
//        numberLabel.layer.cornerRadius = 17.5
//        numberLabel.layer.borderColor = UIColor.black.cgColor
//        numberLabel.layer.borderWidth = 3
//        numberLabel.clipsToBounds = true
        cell.numberLabel.text = "\(indexPath.row+1)"
        
        
        //let titleLabel = cell.viewWithTag(13) as! UILabel
//        titleLabel.layer.cornerRadius = 10
//        titleLabel.layer.borderColor = UIColor.darkGray.cgColor
//        titleLabel.layer.borderWidth = 3
//        titleLabel.clipsToBounds = true
        cell.titleLabel.text = namesArray[indexPath.row]
        
        
        // Configure the cell...

        return cell
    }
    
    @IBAction func loadData(_ sender: Any) {
        imageArray = [UIImage(named: "b2"),UIImage(named: "black"),UIImage(named: "expensive"),UIImage(named: "nice"),UIImage(named: "red"),UIImage(named: "wow"),UIImage(named: "red2"),UIImage(named: "white")] as! [UIImage]
        namesArray = ["Beautiful","Wonderful","Nice","Expensive","Costly","BMW","HIACE","AUDI"]
        tableView.reloadData()
    }
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        name = namesArray[indexPath.row]
        performSegue(withIdentifier: "cellAction", sender: self)
    }
    
    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            
            namesArray.remove(at: indexPath.row)
            imageArray.remove(at: indexPath.row)
            
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
            
            tableView.reloadData()
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    

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
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
