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
  url: "https://github.com/SteveShi/libghostty-swift/releases/download/v1.0.11/GhosttyKit.xcframework.zip",
  checksum: "a496fb8d6faa782587295984626c825f5e91dea26486ae47e92a7351429ae139"
        )
    ]
)
