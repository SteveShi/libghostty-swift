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
  url: "https://github.com/SteveShi/libghostty-swift/releases/download/v1.0.7/GhosttyKit.xcframework.zip",
  checksum: "3c3e1ad9fdbbfbc070c63b8245c9b3ec151a60261e6548b0434a152a72c9ebf4"
        )
    ]
)
