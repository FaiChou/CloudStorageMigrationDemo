//
//  CloudStorageDemoApp.swift
//  CloudStorageDemo
//
//  Created by 周辉 on 2023/8/13.
//

import SwiftUI

@main
struct CloudStorageDemoApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onAppear {
                    let m = CloudStorageMigration.shared
                    if !m.migrated {
                        m.t1 = m.f1
                        m.t2 = m.f2
                        m.t3 = m.f3
                        m.migrated = true
                    }
                }
        }
    }
}
