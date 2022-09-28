// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "Cloudtips",
    products: [
        .library(
            name: "Cloudtips",
            targets: ["CloudtipsSDK"])
    ],
    dependencies: [
        .package(
            url: "https://github.com/cloudpayments/CloudPayments-SDK-iOS.git",
            from: "1.1.12"
        ),
        .package(
            url: "https://github.com/SDWebImage/SDWebImage.git",
            .branch("master")
        ),
        .package(
            url: "https://github.com/goshaginyan/ReCaptcha.git",
            .branch("master")
        ),
        .package(
            url: "https://github.com/yandexmobile/metrica-sdk-ios.git",
            from: "4.4.0"
        ),
        .package(
            url: "https://github.com/SnapKit/SnapKit.git",
            from: "5.6.0"
        )
    ],
    targets: [
        //        .binaryTarget(name: "YandexPaySDK", path: "YandexPaySDK/Static/YandexPaySDK.xcframework"),
        .target(
            name: "CloudtipsSDK",
            dependencies: [
//                "CloudPaymentsSDK",
                           //                           "CloudpaymentsNetworking",
                           "ReCaptcha",
                           "SDWebImage",
                           "SnapKit",
                           .product(name: "CloudPaymentsSDK", package: "CloudPayments-SDK-iOS"),
                           .product(name: "YandexMobileMetrica", package: "metrica-sdk-ios"),
                           //                           .byName(name: "YandexPaySDK")
                          ],
            path: "sdk"
            //            exclude: ["Info.plist"],
            //            publicHeadersPath: "",
            //            cSettings: [
            //                .headerSearchPath("")
            //            ]
        )
    ]
)
