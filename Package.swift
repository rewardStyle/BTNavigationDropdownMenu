// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "BTNavigationDropdownMenu",
    platforms: [
        .iOS(.v13), .macOS(.v10_14)
    ],
    products: [
        .library(
            name: "BTNavigationDropdownMenu",
            targets: ["BTNavigationDropdownMenu"])
    ],
    dependencies: [
        .package(url: "https://github.com/onevcat/Kingfisher", .upToNextMajor(from: "7.0.0")),
    ],
    targets: [
        .target(
            name: "BTNavigationDropdownMenu",
            dependencies: [ "Kingfisher" ])
    ]
)
