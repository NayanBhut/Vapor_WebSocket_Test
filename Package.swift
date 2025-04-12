// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "LocationTrack",
    platforms: [
       .macOS(.v15)
    ],
    dependencies: [
        // 💧 A server-side Swift web framework. 
        .package(url: "https://github.com/vapor/vapor.git", from: "4.92.6"),
    ],
    targets: [
        .target(
            name: "App",
            dependencies: ["Vapor"]
        ),
        .target(name: "Run", dependencies: ["App"]),
        .testTarget(name: "AppTests", dependencies: ["App"]),
    ]
)

