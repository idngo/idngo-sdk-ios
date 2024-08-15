// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "1.30.1"
let checksum = "a754bea85fec511d5db2e3a68e6180b06fa9c3be45b94ab8defc83e3a7316250"

let release = "https://raw.githubusercontent.com/idngo/releases/main/mobilesdk-ios/\(version)"

let package = Package(
    name: "CyberityMobileSDK",
    platforms: [
        .iOS("12.0")
    ],
    products: [
        .library(
            name: "CyberityMobileSDK",
            targets: ["CyberityMobileSDK"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "CyberityMobileSDK",
            url: "\(release)/CyberityMobileSDK-\(version).zip",
            checksum: checksum
        )
    ]
)