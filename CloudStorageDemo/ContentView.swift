//
//  ContentView.swift
//  CloudStorageDemo
//
//  Created by 周辉 on 2023/8/13.
//

import SwiftUI

struct ContentView: View {
    @State private var text: String = ""
    @State private var showAlert1: Bool = false
    @State private var showAlert2: Bool = false
    var body: some View {
        VStack {
            TextField("Value", text: $text)
                .padding()
            Button("save") {
                save()
            }
            .padding()
            Button("restore") {
                restore()
            }
            .padding()
            Button("resotre2") {
                if let x = NSUbiquitousKeyValueStore.default.string(forKey: "nonoooo") {
                    print(x)
                } else {
                    print("novalue")
                }
            }
        }
        .alert(
            "Save Failed",
            isPresented: $showAlert1
        ) {
            Button("OK") {
                // Handle the retry action.
            }
        }
        .alert(
            "Save Success",
            isPresented: $showAlert2
        ) {
            Button("OK") {
                // Handle the retry action.
            }
        }
        .padding()
    }
    private func save() {
        if text.isEmpty {
            showAlert1 = true
            return
        }
        let store = NSUbiquitousKeyValueStore.default
        store.set(text, forKey: "k1")
        store.synchronize()
        showAlert2 = true
    }
    private func restore() {
        let store = NSUbiquitousKeyValueStore.default
        if let value = store.string(forKey: "k1") {
            text = value
        } else {
            print("nothing to restore")
        }
    }
}
