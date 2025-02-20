// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "SwiftyPing",
    platforms: [
        .iOS(.v11),      // veya projenize uygun platformları ekleyin
        .macOS(.v10_15)
    ],
    products: [
        .library(
            name: "SwiftyPing",
            targets: ["SwiftyPing"]
        ),
    ],
    targets: [
        .target(
            name: "SwiftyPing",
            dependencies: [],
            path: "Sources"  // kaynak dosyalarınızın bulunduğu dizini belirtin
        ),
        .testTarget(
            name: "SwiftyPingTests",
            dependencies: ["SwiftyPing"],
            path: "Tests"   // test dosyalarınızın bulunduğu dizin
        ),
    ]
)
