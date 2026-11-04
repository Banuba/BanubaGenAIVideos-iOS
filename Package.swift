// swift-tools-version:5.9

import PackageDescription

let designSystemVersionRange: Range<Version> = "1.0.4"..<"2.0.0"
let banubaUtilsVersionRange: Range<Version> = "1.55.0"..<"1.59.99"
let banubaCoreVersionRange: Range<Version> = "1.55.0"..<"1.59.99"
let banubaLicenseServicingVersionRange: Range<Version> = "1.55.0"..<"1.59.99"

let package = Package(
  name: "BanubaGenAIVideos",
  platforms: [
    .iOS(.v15)
  ],
  products: [
    .library(
      name: "BanubaGenAIVideos",
      targets: ["BanubaGenAIVideosTarget"]
    )
  ],
  dependencies: [
    .package(url: "https://github.com/Banuba/BanubaDesignSystem.git", designSystemVersionRange),
    .package(url: "https://github.com/Banuba/BanubaUtilities-iOS.git", banubaUtilsVersionRange),
    .package(url: "https://github.com/Banuba/BanubaVideoEditorCore-iOS.git", banubaCoreVersionRange),
    .package(url: "https://github.com/Banuba/BanubaLicenseServicingSDK.git", banubaLicenseServicingVersionRange),
  ],
  targets: [
    .target(
      name: "BanubaGenAIVideosWrapper",
      dependencies: [
        "BanubaGenAIVideos",
        .product(name: "BanubaDesignSystem", package: "BanubaDesignSystem"),
        .product(name: "BanubaUtilities", package: "BanubaUtilities-iOS"),
        .product(name: "BanubaVideoEditorCore", package: "BanubaVideoEditorCore-iOS"),
        .product(name: "BanubaLicenseServicingSDK", package: "BanubaLicenseServicingSDK")
      ],
      path: "BanubaGenAIVideosWrapper"
    ),
    .target(
      name: "BanubaGenAIVideosTarget",
      dependencies: [
        .target(name: "BanubaGenAIVideosWrapper")
      ],
      path: "BanubaGenAIVideosTarget"
    ),
    .binaryTarget(
      name: "BanubaGenAIVideos",
      url: "https://nexus.banuba.net/repository/ios-frameworks/ios/frameworks/BanubaGenAIVideos/1.55.0/BanubaGenAIVideos-1.55.0.xcframework.zip",
      checksum: "79a38fcfd991eb3604b03b310c091d935405d8c08f06e1857a93ddccc8a45054"
    )
  ]
)
