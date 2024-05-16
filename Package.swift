// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "Moya-SwiftyJSONMapper",
    platforms: [
        .iOS(.v11),
    ],
    products: [
        .library(
            name: "Moya-SwiftyJSONMapper",
            targets: ["MoyaSwiftyJSONMapper"]
        ),
        .library(
            name: "Moya-SwiftyJSONMapperRxSwift",
            targets: ["MoyaSwiftyJSONMapper-RxSwift"]
        ),
        .library(
            name: "Moya-SwiftyJSONMapperReactiveCocoa",
            targets: ["MoyaSwiftyJSONMapper-ReactiveCocoa"]
        )
    ],
    dependencies: [
        .package(name: "Moya", url: "https://github.com/Moya/Moya.git", .upToNextMajor(from: "14.0.0")),
        .package(name: "SwiftyJSON", url: "https://github.com/SwiftyJSON/SwiftyJSON.git", .upToNextMajor(from: "5.0.0")),
        .package(name: "RxSwift", url: "https://github.com/ReactiveX/RxSwift.git", .upToNextMajor(from: "5.0.0")),
        .package(name: "ReactiveSwift", url: "https://github.com/Moya/ReactiveSwift.git", .upToNextMajor(from: "6.1.0"))
    ],
    targets: [
        .target(
            name: "MoyaSwiftyJSONMapper",
            dependencies: [
                "Moya",
                "SwiftyJSON"
            ],
            path: "Source/Core"
        ),
        .target(
            name: "MoyaSwiftyJSONMapper-RxSwift",
            dependencies: [
                "Moya",
                "MoyaSwiftyJSONMapper",
                "RxSwift"
            ],
            path: "Source/RxSwift"
        ),
        .target(
            name: "MoyaSwiftyJSONMapper-ReactiveCocoa",
            dependencies: [
                "Moya",
                "MoyaSwiftyJSONMapper",
                "ReactiveSwift"
            ],
            path: "Source/ReactiveCocoa"
        )
    ],
    swiftLanguageVersions: [.v5]
)
