// swift-tools-version:5.9

import PackageDescription

let banubaUtilsVersionRange: Range<Version> = "1.53.0-beta.0"..<"1.53.99"
let banubaCoreVersionRange: Range<Version> = "1.53.0-beta.0"..<"1.53.99"
let banubaLicenseServicingVersionRange: Range<Version> = "1.53.0-beta.0"..<"1.53.99"

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
    .package(url: "https://github.com/Banuba/BanubaUtilities-iOS.git", banubaUtilsVersionRange),
    .package(url: "https://github.com/Banuba/BanubaVideoEditorCore-iOS.git", banubaCoreVersionRange),
    .package(url: "https://github.com/Banuba/BanubaLicenseServicingSDK.git", banubaLicenseServicingVersionRange),
  ],
  targets: [
    .target(
      name: "BanubaGenAIVideosWrapper",
      dependencies: [
        "BanubaGenAIVideos",
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
    // Local development uses the path-based binaryTarget below.
    // Release flow (fastlane patch_package_swift_for_nexus) replaces it in the GitHub distribution repo with:
    // .binaryTarget(
    //   name: "BanubaGenAIVideos",
    //   url: "https://nexus.banuba.net/repository/ios-frameworks/ios/frameworks/BanubaGenAIVideos/{version}/BanubaGenAIVideos-{version}.xcframework.zip",
    //   checksum: "{computed at release}"
    // )
    .binaryTarget(
      name: "BanubaGenAIVideos",
      url: "https://nexus.banuba.net/repository/ios-frameworks/ios/frameworks/BanubaGenAIVideos/1.53.0/BanubaGenAIVideos-1.53.0.xcframework.zip",
      checksum: "0f80a063438053acbf462f7c46307b2d8d4cd26ce4e26a084145ee9d0137c3b7"
    )
  ]
)
