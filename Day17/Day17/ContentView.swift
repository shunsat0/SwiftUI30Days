//
//  ContentView.swift
//  Day17
//
//  Created by Shun Sato on 2024/05/01.
//

import SwiftUI

struct ContentView: View {
    private let url = URL(string: "https://example.com/")!
    var body: some View {
        VStack {
            ShareLink(item: url)
        }
    }
}

#Preview {
    ContentView()
}
