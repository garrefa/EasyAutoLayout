// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "EasyAutoLayout",
    products: [
        .library(
            name: "EasyAutoLayout",
            targets: ["EasyAutoLayout"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "EasyAutoLayout",
            dependencies: []),
        .testTarget(
            name: "EasyAutoLayoutTests",
            dependencies: ["EasyAutoLayout"]),
    ]
)
