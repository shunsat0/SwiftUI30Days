//
//  ContentView.swift
//  Day24
//
//  Created by Shun Sato on 2024/05/08.
//

import SwiftUI

struct ContentView: View {
    let categories = ["Business", "Opinion & Analysis", "Editorial", "More Japan News", "Medical", "Environment", "Corporate"]
    
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Categories").font(.headline)) {
                    ForEach(categories, id: \.self) { category in
                        
                        NavigationLink(destination: ThumbnailView(category: category)) {
                            Text(category)
                        }
                    }
                }

            }
            .listStyle(SidebarListStyle())
            .navigationTitle("News")
        }
    }
}


#Preview {
    ContentView()
}
