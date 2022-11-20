// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CrackStationWrapper",
    platforms: [
        .macOS(.v10_15)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "CrackStationWrapper",
            targets: ["CrackStationWrapper"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: "https://github.com/NinadAnklesaria/CrackStation", from: "1.0.3")
        // .package(url: "https://github.com/katkhedp/CrackStation", from: "1.0.1")13
        .package(url: "https://github.com/aniketpoojari/CrackStation.git", from: "3.0.1")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite
        // Targets can depend on other targets in this package, and on products in packages this package depends o
        .target(
            name: "CrackStationWrapper",
            dependencies: [
                "CrackStation"
                // In an emergency, you could still get a package to work if
                // the package repo isn't named `CrackStation`. Here:
                //
                //.product(name: "CrackStation", package: "sha-crack-station)
            ]),
        .testTarget(
            name: "CrackStationWrapperTests",
            dependencies: ["CrackStationWrapper"])
    ]
)
