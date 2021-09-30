// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "PlayKit",
    platforms: [
        .iOS(.v9),
        .tvOS(.v9)
    ],
    products: [
        .library(
                name: "PlayKit",
                targets: ["PlayKit"]),
    ],
    dependencies: [
        .package(url: "https://github.com/SwiftyJSON/SwiftyJSON", .upToNextMinor(from: "5.0.1")),
        .package(url: "https://github.com/DaveWoodCom/XCGLogger", .upToNextMinor(from: "7.0.0")),
        .package(name: "KalturaNetKit", url: "https://github.com/init-Mobile/netkit-ios", .branch("develop")),
        .package(name: "PlayKitUtils", url: "https://github.com/init-Mobile/playkit-ios-utils.git", .branch("develop")),
    ],
    targets: [
        .target(
                name: "PlayKit",
                dependencies: [
                    "SwiftyJSON",
                    "XCGLogger",
                    "KalturaNetKit",
                    "PlayKitUtils"
                ],
                path: "Classes"
        ),
    ],
    swiftLanguageVersions: [.v5]
)
