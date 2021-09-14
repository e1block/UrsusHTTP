// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "UrsusHTTP",
    platforms: [
        .macOS(.v10_15),
        .iOS(.v13)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "UrsusHTTP",
            targets: ["UrsusHTTP"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: "5.2.0")),
        .package(url: "https://github.com/famousj/AlamofireEventSource", .upToNextMajor(from: "1.2.0")),
        .package(url: "git@github.com:famousj/UrsusAtom.git", .upToNextMajor(from: "1.2.0")),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "UrsusHTTP",
            dependencies: ["Alamofire", "AlamofireEventSource", "UrsusAtom"]),
    ]
)
