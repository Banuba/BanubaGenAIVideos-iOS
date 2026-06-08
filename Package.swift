// swift-tools-version:5.9

import PackageDescription

let version: Version = "1.53.0-beta.0"

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
    .package(url: "https://github.com/Banuba/BanubaUtilities-iOS.git", exact: version),
    .package(url: "https://github.com/Banuba/BanubaVideoEditorCore-iOS.git", exact: version),
    .package(url: "https://github.com/Banuba/BanubaLicenseServicingSDK.git", exact: version),
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
    .binaryTarget(
      name: "BanubaGenAIVideos",
      url: "https://nexus.banuba.net/repository/ios-frameworks/ios/frameworks/BanubaGenAIVideos/1.53.0-beta.0/BanubaGenAIVideos-1.53.0-beta.0.xcframework.zip",
      checksum: "a3b36a5e6eb62975763e50364c8d4a23a5fe88d245b1bc43c9f260aeacb84a0c"
    )
  ]
)
