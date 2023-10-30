// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "SherlockForms",
    platforms: [.iOS(.v14)], // FIXME: macOS?
    products: [
        .library(
            name: "SherlockForms",
            targets: ["SherlockForms"]
        ),
        .library(
            name: "SherlockDebugForms",
            targets: ["SherlockDebugForms"]
        ),
        .library(
            name: "SherlockHUD",
            targets: ["SherlockHUD"]
        ),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "SherlockHUD",
            dependencies: [],
        ),
        .target(
            name: "SherlockForms",
            dependencies: ["SherlockHUD"],
        ),
        .target(
            name: "SherlockDebugForms",
            dependencies: ["SherlockForms"],
        ),
    ]
)
