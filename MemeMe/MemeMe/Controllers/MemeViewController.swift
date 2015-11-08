//
//  MemeViewController.swift
//  MemeMe
//
//  Created by Yevhen Herasymenko on 08/11/2015.
//  Copyright © 2015 YevhenHerasymenko. All rights reserved.
//

import UIKit

class MemeViewController: UIViewController {
    
    @IBOutlet weak var memeImageView: UIImageView!
    
    public var meme: Meme!

    override func viewDidLoad() {
        super.viewDidLoad()
        memeImageView.image = meme.memedImage
    }

}
