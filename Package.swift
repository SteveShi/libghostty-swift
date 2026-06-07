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
  url: "https://github.com/SteveShi/libghostty-swift/releases/download/v1.0.9/GhosttyKit.xcframework.zip",
  checksum: "e28b71843ed4791d4ac455ae8bb04051684165aa98c31a3127edc58db88816aa"
        )
    ]
)
