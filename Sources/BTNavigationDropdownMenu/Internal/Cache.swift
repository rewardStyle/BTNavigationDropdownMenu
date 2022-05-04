//
//  Cache.swift
//  BTNavigationDropdownMenu
//
//  Created by Daniel Baldwin on 5/4/22.
//  Copyright © 2022 Pham Ba Tho. All rights reserved.
//

#if canImport(UIKit)
import UIKit

class Cache {

    let imageCache = NSCache<NSString, UIImage>()

    func getImage(_ key: String) -> UIImage? {
        return imageCache.object(forKey: NSString(string: key))
    }

    func setImage(_ image: UIImage, key: String) {
        imageCache.setObject(image, forKey: NSString(string: key))
    }
}
#endif
