//
//  ContentView.swift
//  Day20
//
//  Created by Shun Sato on 2024/05/04.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            Text("Hello World!")
                .toolbar {
                    HStack {
                        Text("テキスト")
                        Button("ボタン") { }
                        NavigationLink("ナビゲーションリンク") {}
                    }
                }
        }
    }
}

#Preview {
    ContentView()
}
