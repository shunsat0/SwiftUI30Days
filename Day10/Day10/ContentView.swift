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
        VStack(alignment: .leading) {
            Text(place?.name ?? "")
                .font(.headline)
                .padding(.horizontal, 32)
            
            VStack {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(places,id: \.self) { place in
                            Image(place.image)
                                .resizable()
                                .cornerRadius(15)
                                .frame(width: 150, height: 150)
                            
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
