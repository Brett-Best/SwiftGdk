// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "Gdk",
    products: [
        .library(name: "Gdk", targets: ["Gdk"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Brett-Best/CGdk.git", .branch("bb-pkg-dev")),
        .package(url: "https://github.com/Brett-Best/SwiftGdkPixbuf.git", .branch("bb-pkg-dev")),
        .package(url: "https://github.com/Brett-Best/SwiftPangoCairo.git", .branch("bb-pkg-dev")),
    ],
    targets: [
        .target(name: "Gdk", dependencies: ["GdkPixbuf", "PangoCairo"]),
        .testTarget(name: "GdkTests", dependencies: ["Gdk"]),
    ]
)
