//
//  ContentView.swift
//  Day15
//
//  Created by Shun Sato on 2024/04/29.
//

import SwiftUI

struct ContentView: View {
    @State private var showSheet: Bool = false
    
    var body: some View {
        Button(action: {
            showSheet.toggle()
        }, label: {
            Text("シートを開く")
        })
        .sheet(isPresented: $showSheet, content: {
            HalfModalView()
        })
    }
}

struct HalfModalView: View {
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        Button("閉じる") {
            dismiss()
        }
    }
}

#Preview {
    ContentView()
}
