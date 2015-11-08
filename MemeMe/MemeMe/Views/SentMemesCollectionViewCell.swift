//
//  SentMemesCollectionViewCell.swift
//  MemeMe
//
//  Created by Yevhen Herasymenko on 08/11/2015.
//  Copyright © 2015 YevhenHerasymenko. All rights reserved.
//

import UIKit

class SentMemesCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var memeImage: UIImageView!
    
    func config(meme: Meme) {
        memeImage.image = meme.memedImage
    }

}
