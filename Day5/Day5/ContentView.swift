//
//  ContentView.swift
//  Day5
//
//  Created by Shun Sato on 2024/04/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Text("First Tab")
                .tabItem {
                    Image(systemName: "1.circle")
                    Text("First")
                }
            
            Text("Second Tab")
                .tabItem {
                    Image(systemName: "2.circle")
                    Text("Second")
                }
                .badge(5)
            
            ScrollView {

                ForEach(1..<20) { index in

                    Text("データ\(index)")

                }
            }
            .tabItem {
                Image(systemName: "3.circle")
                Text("Third")
            }
        }
    }
}

#Preview {
    ContentView()
}
