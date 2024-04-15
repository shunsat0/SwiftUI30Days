//
//  Day2App.swift
//  Day2
//
//  Created by Shun Sato on 2024/04/15.
//

import SwiftUI

@main
struct Day2App: App {
    @AppStorage("userTheme") private var userTheme: Theme = .systemDefault
    var body: some Scene {
        WindowGroup {
            ContentView()
                .preferredColorScheme(userTheme.colorScheme)
        }
    }
}
