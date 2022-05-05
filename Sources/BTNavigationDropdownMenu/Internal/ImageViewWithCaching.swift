//
//  ImageViewWithCaching.swift
//  BTNavigationDropdownMenu
//
//  Created by Daniel Baldwin on 5/4/22.
//  Copyright © 2022 Pham Ba Tho. All rights reserved.
//

#if canImport(UIKit)
import UIKit

class ImageViewWithCaching: UIImageView {

    var imageUrlString: String?

    func imageForUrl(_ urlString: String, placeholder: UIImage?) {
        self.image = placeholder
        imageUrlString = urlString
        if let cachedImage = Dependency.shared.cache.getImage(urlString) {
            self.image = cachedImage
            return
        }

        guard let url = URL(string: urlString) else { return }

        URLSession.shared.dataTask(with: url) { [weak self] data, _, error in
            guard let self = self,
                  let data = data,
                  let image = UIImage(data: data) else { return }

            DispatchQueue.main.async {
                if urlString == self.imageUrlString {
                    self.image = image
                }

                Dependency.shared.cache.setImage(image, key: urlString)
            }
        }.resume()
    }
}
#endif
