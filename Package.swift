// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CalendarControl",
    platforms: [
      .macOS(.v10_15), .iOS(.v14), .tvOS(.v14)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "CalendarControl",
            targets: ["CalendarControl"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(
            name: "CalendarControl",
            url: "https://github.com/tianb0/calendarcontroll/blob/main/Sources/CalendarControl.xcframework.zip",
            checksum: "75b0c9bc16bbf50725a7c1120937c182345799a41aa0ff336f7c1d95a6c9e43a"),
    ]
)
