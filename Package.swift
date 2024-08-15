// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "1.20.6"
let checksum = "60a7362c959bf629d4fe28bf2b2c135813adc9ca0c393488640bb4b74d4e22a0"

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