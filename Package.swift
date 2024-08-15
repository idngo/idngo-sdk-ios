// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "1.19.0"
let checksum = "9455f06cae5462f2fe0630bae62eee2c19c9ff3c5c439e424a3414cb4ac26c22"

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