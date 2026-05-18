// swift-tools-version: 5.10

import PackageDescription

let package = Package(
    name: "DesignSystem",
    defaultLocalization: "en",
    platforms: [.iOS(.v17)],
    products: [
        .library(
            name: "DesignSystem",
            targets: ["DesignSystem"]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/novasamatech/Keystore-iOS",
            from: "1.0.1"
        )
    ],
    targets: [
        .target(
            name: "DesignSystem",
            dependencies: [
                .product(name: "Keystore-iOS", package: "keystore-ios")
            ],
            path: "Sources/DesignSystem"
        ),
        .testTarget(
            name: "DesignSystemTests",
            dependencies: ["DesignSystem"],
            path: "Tests/DesignSystemTests"
        )
    ]
)
