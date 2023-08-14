//
//  Types.swift
//  CloudStorageDemo
//
//  Created by 周辉 on 2023/8/14.
//

import Foundation
import SwiftUI

let K1 = "TestKey8"
let K2 = "TestKey9"
let K3 = "TestKey0"

enum SubtitleFontSize: String, Codable, CaseIterable, Identifiable {
    case small = "小号"
    case medium = "中号"
    case large = "大号"
    case superLarge = "超大"
    var id: Self { self }
    var toFontSize: CGFloat {
        switch self {
        case .small:
            return 30
        case .medium:
            return 36
        case .large:
            return 45
        case .superLarge:
            return 60
        }
    }
}

