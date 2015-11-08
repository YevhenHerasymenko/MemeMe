//
//  SentMemesCollectionViewController.swift
//  MemeMe
//
//  Created by Yevhen Herasymenko on 08/11/2015.
//  Copyright © 2015 YevhenHerasymenko. All rights reserved.
//

import UIKit

let segueCollectionMeme = "collectionViewToMemeSegue"

class SentMemesCollectionViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var flowLayout: UICollectionViewFlowLayout!
    
    var indexSelectedMeme: Int!
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        collectionView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let space: CGFloat = 3.0
        let dimension = (self.view.frame.size.width - (2 * space)) / 3.0
        
        flowLayout.minimumInteritemSpacing = space
        flowLayout.itemSize = CGSizeMake(dimension, dimension)
    }
    
    //MARK: Collection View Data Source
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return (UIApplication.sharedApplication().delegate as! AppDelegate).memes.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("sentMemeCell", forIndexPath: indexPath) as! SentMemesCollectionViewCell
        
        cell.config((UIApplication.sharedApplication().delegate as! AppDelegate).memes[indexPath.row])
        
        return cell
    }
    
    //MARK: Collection View Delegate
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        indexSelectedMeme = indexPath.row
        self.performSegueWithIdentifier(segueCollectionMeme, sender: self)
    }
    
    //MARK: Segue
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == segueCollectionMeme {
            let memeController: MemeViewController = segue.destinationViewController as! MemeViewController
            memeController.meme = (UIApplication.sharedApplication().delegate as! AppDelegate).memes[indexSelectedMeme]
        }
    }

}
