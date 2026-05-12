// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "AilohaAgentSwift",
    platforms: [
        .iOS(.v15),
        .macOS(.v12),
        .macCatalyst(.v15)
    ],
    products: [
        .library(
            name: "AilohaAgent",
            targets: ["AilohaAgent"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "AilohaAgent",
            url: "https://github.com/Redth/ailoha-releases/releases/download/v0.1.13/AilohaAgent.xcframework.zip",
            checksum: "7c61cc0705afd160910c962d56afa576550b60de464a4d79722514d622ec710f"
        )
    ]
)
