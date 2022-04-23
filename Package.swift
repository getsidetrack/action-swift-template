// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let name = "helloworld-swift"

let package = Package(
    name: name,
    products: [
        .executable(name: "Run", targets: [name]),
    ],
    dependencies: [
        // Define dependencies
    ],
    targets: [
        .executableTarget(
            name: name,
            dependencies: [
                // Link dependencies
            ],
            path: "Sources"
        ),
    ]
)
