// swift-tools-version:5.9

import PackageDescription

let designSystemVersionRange: Range<Version> = "1.0.4"..<"2.0.0"
let banubaUtilsVersionRange: Range<Version> = "0.54.5-beta.2"..<"1.59.99"
let banubaCoreVersionRange: Range<Version> = "0.54.5-beta.2"..<"1.59.99"
let banubaLicenseServicingVersionRange: Range<Version> = "0.54.5-beta.2"..<"1.59.99"

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
      url: "https://nexus.banuba.net/repository/ios-frameworks/ios/frameworks/BanubaGenAIVideos/0.54.5-beta.2/BanubaGenAIVideos-0.54.5-beta.2.xcframework.zip",
      checksum: "7f9a33011848b3c3980678db24dab38f7100a3a2382d4d75b337094d87661497"
    )
  ]
)
