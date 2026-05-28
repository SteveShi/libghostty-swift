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
  url: "https://github.com/SteveShi/libghostty-swift/releases/download/v1.0.4/GhosttyKit.xcframework.zip",
  checksum: "e977d0df7021fd28d674c83972573e1b7151009905ea4cfe4273be7950d3d6eb"
        )
    ]
)
