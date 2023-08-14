//
//  CloudStorageMigration.swift
//  CloudStorageDemo
//
//  Created by 周辉 on 2023/8/14.
//

import Foundation
import SwiftUI

struct CloudStorageMigration {
    static let shared = CloudStorageMigration()
    @CloudStorage("MigratedV2") var migrated = false
    @AppStorage(K1) var f1: String = "default"
    @AppStorage(K2) var f2: Bool = false
    @AppStorage(K3) var f3: SubtitleFontSize = .large
    @CloudStorage(K1) var t1: String = "default"
    @CloudStorage(K2) var t2: Bool = false
    @CloudStorage(K3) var t3: SubtitleFontSize = .large
}
