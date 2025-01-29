// swift-tools-version:5.10

import PackageDescription

let package = Package(
    name: "moex-dto",
    platforms: [
        .macOS(.v12),
        .iOS(.v13)
    ],
    products: [
        .library(name: "MoexDto", targets: ["MoexDto"]),
    ],
    dependencies: [
		.package(url: "https://github.com/ViktorChernykh/trader-user-dto.git", from: "0.0.1"),
	],
    targets: [
        .target(name: "MoexDto", dependencies: [
			.product(name: "TraderUserDto", package: "trader-user-dto"),
		]),
    ]
)
