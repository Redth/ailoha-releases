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
            url: "https://github.com/Redth/ailoha-releases/releases/download/v0.1.12/AilohaAgent.xcframework.zip",
            checksum: "a6232b5beb07ed0b497223bd63cf2f237c93f0c766db1f370c0634633932995b"
        )
    ]
)
