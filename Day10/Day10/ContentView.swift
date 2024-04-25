//
//  ContentView.swift
//  Day10
//
//  Created by Shun Sato on 2024/04/24.
//

import SwiftUI

struct Place: Hashable {
    let name: String
    let image: String
}

struct ContentView: View {
    @State var place: Place?
    
    let places: [Place] = [
        Place(name: "Tokyo", image: "tokyo"),
        Place(name: "Paris", image: "paris"),
        Place(name: "New York", image: "nyc"),
        Place(name: "Rome", image: "rome"),
        Place(name: "London", image: "london"),
        Place(name: "Dubai", image: "dubai"),
    ]
    
    var body: some View {
        VStack {
            NavigationStack {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack() {
                        ForEach(places,id: \.self) { place in
                            VStack(alignment: .leading) {
                                Group {
                                    Image(place.image)
                                        .resizable()
                                    //.aspectRatio(contentMode: .fit)
                                        .cornerRadius(6)
                                        .frame(width: 150, height: 150)
                                    
                                    Text("観光地")
                                        .frame(width: 150, alignment: .leading)
                                        .font(.headline)
                                    Text("あなたにオススメの観光地です。")
                                        .lineLimit(1)
                                        .frame(width: 150, alignment: .leading)
                                        .font(.caption)
                                }
                                .frame(width: 150)
                            }
                        }
                    }
                }
                .navigationTitle("ホーム")
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: {
                            // Do Something
                        }, label: {
                            Image(systemName: "person.crop.circle.fill")
                                .font(.system(size: 24))
                        })
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
