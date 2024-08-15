// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "1.19.2"
let checksum = "823e790420069fd7295967df7f18592d97acafb4e07a7fc78c58da4154c8a834"

let release = "https://raw.githubusercontent.com/idngo/releases/archive/mobilesdk-ios/\(version)"

let package = Package(
    name: "IdensicMobileSDK",
    platforms: [
        .iOS(.v10)
    ],
    products: [
        .library(
            name: "IdensicMobileSDK",
            targets: ["IdensicMobileSDK"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "IdensicMobileSDK",
            url: "\(release)/IdensicMobileSDK-\(version).zip",
            checksum: checksum
        )
    ]
)