//
//  BTCellViewModel.swift
//  BTNavigationDropdownMenu
//
//  Created by Daniel Baldwin on 5/5/22.
//  Copyright © 2022 Pham Ba Tho. All rights reserved.
//

import Foundation

public struct BTCellViewModel {
    public let title: String?
    public let imageUrlString: String?

    public init(title: String?, imageUrlString: String?) {
        self.title = title
        self.imageUrlString = imageUrlString
    }
}
