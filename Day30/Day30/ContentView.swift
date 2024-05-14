//
//  ContentView.swift
//  Day30
//
//  Created by Shun Sato on 2024/05/14.
//

import SwiftUI

struct Cat: Identifiable, Hashable {
    let id = UUID()
    var catName: String
}

struct ContentView: View {
    @State private var selectedCatID: UUID?
    let myCats = [Cat(catName: "はな"), Cat(catName: "たろう"), Cat(catName: "じろう")]
    
    var body: some View {
        VStack {
            Picker("Picker", selection: $selectedCatID) {
                ForEach(myCats) { cat in
                    Text(cat.catName)
                        .tag(cat.id as UUID?)
                }
            }
            .pickerStyle(WheelPickerStyle())
        
        }
    }
}

#Preview {
    ContentView()
}
