// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "libghostty-swift",
    platforms: [
        .macOS(.v15)
    ],
    products: [
        .library(
            name: "libghostty-swift",
            targets: ["libghostty-swift"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/Lakr233/MSDisplayLink.git", from: "2.1.0")
    ],
    targets: [
        .target(
            name: "libghostty-swift",
            dependencies: [
                "GhosttyKit",
                .product(name: "MSDisplayLink", package: "MSDisplayLink")
            ]
        ),
        .binaryTarget(
            name: "GhosttyKit",
            url: "https://github.com/SteveShi/libghostty-swift/releases/download/v1.0.0/GhosttyKit.xcframework.zip",
            checksum: "6cdaec0af77fb8799eab6c154b179d74559910917ec14646e33957cb883c2685"
        )
    ]
)
