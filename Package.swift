// swift-tools-version: 6.0

import PackageDescription

let package = Package(
  name: "AdventOfCode",
  dependencies: [
    .package(url: "https://github.com/apple/swift-argument-parser.git", .upToNextMajor(from: "1.5.0"))
  ],
  targets: [
    .executableTarget(
      name: "AdventOfCode2024",
      dependencies: [
        .product(name: "ArgumentParser", package: "swift-argument-parser")
      ]
    ),
    .testTarget(
        name: "AdventOfCode2024Tests",
        dependencies: ["AdventOfCode2024"]
    ),
  ]
)
