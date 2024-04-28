//
//  ContentView.swift
//  Day14
//
//  Created by Shun Sato on 2024/04/28.
//

import SwiftUI

struct ContentView: View {
    @State var articles = sampleArticles
    @State private var searchText = ""
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(articles) { article in
                    HStack() {
                        AsyncImage(url: URL(string: article.imageURL)) { image in
                            image
                                .resizable()
                                .scaledToFill()
                        } placeholder: {
                            Color.purple.opacity(0.1)
                        }
                        .frame(width: 100, height: 100)
                        .cornerRadius(20)
                        
                        Text(article.title)
                            .font(.headline)
                            .fontDesign(.rounded)
                    }
                }
                .listRowSeparator(.hidden)
            }
            .listStyle(.plain)
            .navigationTitle("TopNews")
        }
        .searchable(text: $searchText, prompt: "Search articles...")
        .onChange(of: searchText) { oldValue, newValue in

            if !newValue.isEmpty {
                articles = sampleArticles.filter { $0.title.contains(newValue) }
            } else {
                articles = sampleArticles
            }
        }
    }
}

#Preview {
    ContentView()
}
