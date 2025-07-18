//
//  WordListApp.swift
//  WordList
//
//  Created by maho hayashi on 2025/07/18.
//

import SwiftUI
import SwiftData

@main
struct WordListApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: Word.self)
        }
    }
}
