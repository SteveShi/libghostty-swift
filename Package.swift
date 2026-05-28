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
  url: "https://github.com/SteveShi/libghostty-swift/releases/download/v1.0.5/GhosttyKit.xcframework.zip",
  checksum: "ab1245f5c612b72b24e9b965d84afc83c59155950fcf8ef7a0ef440358584565"
        )
    ]
)
