//
//  ContentView.swift
//  Day18
//
//  Created by Shun Sato on 2024/05/02.
//

import SwiftUI

struct ContentView: View {
    @State var showAlert1: Bool = false
    @State var showAlert2: Bool = false
    
    var body: some View {
        Button(action: {
            showAlert1.toggle()
        }, label: {
            Text("Show Alert1")
        })
        .alert(isPresented: $showAlert1, content: {
            Alert(title: Text("Hide Alert?"), message: Text("Choose Option"), dismissButton: .cancel())
        })
        
        Button(action: {
            showAlert2.toggle()
        }, label: {
            Text("Show Alert2")
        })
        .alert(isPresented: $showAlert2, content: {
            Alert(title: Text("Hide Alert?"), primaryButton: .destructive(Text("Yes")), secondaryButton: .cancel())
        })
    }
}

#Preview {
    ContentView()
}
