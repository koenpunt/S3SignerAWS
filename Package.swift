// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "S3SignerAWS",
    platforms: [
        .macOS(.v10_15)
    ],
    products: [
        .library(name: "S3SignerAWS", targets: ["S3SignerAWS"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-crypto", from: "1.1.3")
    ],
    targets: [
        .target(name: "S3SignerAWS", dependencies: ["Crypto"], path: "Sources"),
        .testTarget(name: "S3SignerAWSTests", dependencies: ["S3SignerAWS"]),
    ]
)
