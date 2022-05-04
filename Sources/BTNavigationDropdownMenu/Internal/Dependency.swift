//
//  Dependency.swift
//  BTNavigationDropdownMenu
//
//  Created by Daniel Baldwin on 5/4/22.
//  Copyright © 2022 Pham Ba Tho. All rights reserved.
//

#if canImport(UIKit)
import Foundation

class Dependency {

    static var shared = Dependency()

    lazy var cache: Cache = {
        let cache = Cache()
        return cache
    }()
}
#endif
