//
//  ContentView.swift
//  Day19
//
//  Created by Shun Sato on 2024/05/03.
//

import SwiftUI
import SwiftUICompatible

struct ContentView: View {
    @State var showingPreview = true
    
    var body: some View {
        Button(action: {
            showingPreview.toggle()
        }, label: {
            Text("Show Preview")
        })
        .sheet(isPresented: $showingPreview) {
            SafariView(url: URL(string: "https://github.com/mszmagic/SwiftUICompatible")!)
        }
    }
}

#Preview {
    ContentView()
}
