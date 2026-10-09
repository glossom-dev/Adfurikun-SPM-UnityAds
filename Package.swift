// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "Adfurikun-SPM-UnityAds",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "AdfurikunUnityAds", targets: ["AdfurikunUnityAds"])
    ],
    dependencies: [
        .package(
            url: "https://github.com/glossom-dev/Adfurikun-SPM-Core.git",
            exact: "4.5.0-alpha.3"
        ),
        .package(
            url: "https://github.com/Unity-Technologies/Unity-Ads-Swift-Package.git",
            exact: "4.20.0"
        ),
    ],
    targets: [
        .target(
            name: "AdfurikunUnityAds",
            dependencies: [
                .product(name: "AdfurikunSDK", package: "Adfurikun-SPM-Core"),
                .product(name: "UnityAds", package: "Unity-Ads-Swift-Package")
            ],
            path: "Sources",
            publicHeadersPath: "."
        )
    ]
)
