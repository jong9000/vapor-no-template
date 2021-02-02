// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "myProject",
    platforms: [
        .macOS(.v11)
    ],
    products: [
        .executable(name: "myProject", targets: ["myProject"]),
    ],
    dependencies: [
      .package(url: "https://github.com/vapor/vapor", from: "4.14.0"),
    ],
    targets: [
        .target(
            name: "myProject",
          dependencies: [
            .product(name: "Vapor", package: "vapor")
            ]),
        .testTarget(
            name: "myProjectTests",
            dependencies: ["myProject"]),
    ]
)
