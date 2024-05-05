//
//  ContentView.swift
//  Day21
//
//  Created by Shun Sato on 2024/05/05.
//

import SwiftUI

struct ContentView: View {
    @State private var showPopover = false
    
    var body: some View {
        Button("Show Popover") {
            showPopover = true
        }
        .popover(isPresented: $showPopover) {
            Text("Here's some content")
                .padding(20)
        }
    }
}


#Preview {
    ContentView()
}
