//
//  SentMemesTableViewController.swift
//  MemeMe
//
//  Created by Yevhen Herasymenko on 08/11/2015.
//  Copyright © 2015 YevhenHerasymenko. All rights reserved.
//

import UIKit

let segueConstant = "tableViewToMemeSegue"

class SentMemesTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var indexSelectedMeme: Int!
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    
    //MARK: Table View Data Source
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (UIApplication.sharedApplication().delegate as! AppDelegate).memes.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("sentMemeCell") as! SentMemesTableViewCell
        
        cell.config((UIApplication.sharedApplication().delegate as! AppDelegate).memes[indexPath.row])
        
        return cell
    }
    
    //MARK: Table View Delegate
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        indexSelectedMeme = indexPath.row
        self.performSegueWithIdentifier(segueConstant, sender: self)
    }
    
    //MARK: Segue
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == segueConstant {
            let memeController: MemeViewController = segue.destinationViewController as! MemeViewController
            memeController.meme = (UIApplication.sharedApplication().delegate as! AppDelegate).memes[indexSelectedMeme]
        }
    }

}
