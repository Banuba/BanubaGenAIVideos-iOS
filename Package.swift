// swift-tools-version:5.9

import PackageDescription

let designSystemVersionRange: Range<Version> = "1.0.4"..<"2.0.0"
let banubaUtilsVersion: Version = "1.55.1"
let banubaCoreVersion: Version = "1.55.1"
let banubaLicenseServicingVersion: Version = "1.55.1"

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
    .package(url: "https://github.com/Banuba/BanubaUtilities-iOS.git", exact: banubaUtilsVersion),
    .package(url: "https://github.com/Banuba/BanubaVideoEditorCore-iOS.git", exact: banubaCoreVersion),
    .package(url: "https://github.com/Banuba/BanubaLicenseServicingSDK.git", exact: banubaLicenseServicingVersion),
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
      url: "https://nexus.banuba.net/repository/ios-frameworks/ios/frameworks/BanubaGenAIVideos/1.55.1/BanubaGenAIVideos-1.55.1.xcframework.zip",
      checksum: "f8e2dc30e4663fdff9695ae8003544c25bf4c6d99d8db1bedb6a3285d5232b49"
    )
  ]
)
