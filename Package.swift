// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "1.20.2"
let checksum = "0aa5f8516ac842425bd6ffb7cd73c6da11de88a34ae603b740c237dadac6211f"

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