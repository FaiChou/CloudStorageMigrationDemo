//
//  ContentView.swift
//  CloudStorageDemo
//
//  Created by 周辉 on 2023/8/13.
//

import SwiftUI

struct ContentView: View {
    @CloudStorage(K1) private var value1: String = "default"
    @CloudStorage(K2) private var value2: Bool = false
    @CloudStorage(K3) private var value3: SubtitleFontSize = .large
    var body: some View {
        VStack {
            TextField("k1", text: $value1)
                .padding()
            Toggle("k2", isOn: $value2)
                .padding()
            ForEach(SubtitleFontSize.allCases) { size in
                if size.rawValue == value3.rawValue {
                    Button("[已选择]: \(size.rawValue)") {
                        value3 = size
                    }
                } else {
                    Button(size.rawValue) {
                        value3 = size
                    }
                }
            }
            .padding()
        }
    }
}
