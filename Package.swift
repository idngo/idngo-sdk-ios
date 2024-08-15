// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "1.18.2"
let checksum = "0cbfd0d333c6a20f91aa5c669df1a74d26595ae861a2f1125a8ce2df5a0bcb1a"

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