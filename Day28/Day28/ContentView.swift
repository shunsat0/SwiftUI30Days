//
//  ContentView.swift
//  Day28
//
//  Created by Shun Sato on 2024/05/12.
//

import SwiftUI
import SafariServices

struct SafariWebView: UIViewControllerRepresentable {
    let url: URL
    
    func makeUIViewController(context: Context) -> SFSafariViewController {
        return SFSafariViewController(url: url)
    }
    
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: Context) {
        
    }
}

struct ContentView: View {
    var body: some View {
        NavigationStack {
            NavigationLink("Open Safari View") {
                SafariWebView(url: URL(string: "https://www.apple.com/jp/")!)
                    .ignoresSafeArea()
            }
        }
    }
}

#Preview {
    ContentView()
}
