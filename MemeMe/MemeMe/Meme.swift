//
//  Meme.swift
//  MemeMe
//
//  Created by Yevhen Herasymenko on 11/2/15.
//  Copyright © 2015 YevhenHerasymenko. All rights reserved.
//

import UIKit

class Meme: NSObject {

    var image : UIImage!
    var memedImage: UIImage!
    var textTop: NSString!
    var textBottom: NSString!
    
    init(textTop: NSString!, textBottom: NSString!, image: UIImage!, memedImage: UIImage!) {
        super.init()
        self.image = image
        self.memedImage = memedImage
        self.textTop = textTop
        self.textBottom = textBottom
    }
    
}
