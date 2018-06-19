// swift-tools-version:4.1
//
//  LayoutAnchor.swift
//  LayoutAnchor
//
//  Created by Vinicius França on 23/10/15.
//  Copyright © 2017 viniciusfranca. All rights reserved.
//

import PackageDescription

let package = Package(
    name: "LayoutAnchor",
    products: [
        .library(
            name: "LayoutAnchor",
            targets: ["LayoutAnchor"]),
        ],
    dependencies: [],
    targets: [
        .target(
            name: "LayoutAnchor",
            dependencies: [],
            path: "Sources"),
        .testTarget(
            name: "LayoutAnchorTests",
            dependencies: ["LayoutAnchor"],
            path: "Tests")
    ]
)
