//
//  SentMemesTableViewCell.swift
//  MemeMe
//
//  Created by Yevhen Herasymenko on 08/11/2015.
//  Copyright © 2015 YevhenHerasymenko. All rights reserved.
//

import UIKit

class SentMemesTableViewCell: UITableViewCell {
    
    @IBOutlet weak var memeImage: UIImageView!
    @IBOutlet weak var mameTextLabel: UILabel!
    
    func config(meme: Meme) {
        memeImage.image = meme.memedImage
        mameTextLabel.text = meme.textTop + " " + meme.textBottom
    }

}
