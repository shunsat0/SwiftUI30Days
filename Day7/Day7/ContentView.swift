//
//  ContentView.swift
//  Day7
//
//  Created by Shun Sato on 2024/04/23.
//

import SwiftUI

struct Character: Hashable {
    var name:String
}

struct ContentView: View {
    
    @State var isEditing:Bool = true
    
    @State var characters = [
        Character(name:"Arya Stark"),
        Character(name: "Jon Snow"),
        Character(name: "Jamie Lannister"),
        Character(name: "Ed Stark"),
        Character(name: "Taro Yamada"),
        Character(name: "Shohei Otani")
    ]
    
    func move(from source: IndexSet,to destination: Int){
        characters.move(fromOffsets: source, toOffset: destination)
    }
    
    func deleteIem(at offsets: IndexSet) {
        characters.remove(atOffsets: offsets)
    }
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(characters, id: \.self) { character in
                    Text(character.name)
                }
                .onMove(perform: move)
                .onDelete(perform: deleteIem)
                .deleteDisabled(false)
                .moveDisabled(false)
            }
            .navigationBarItems(trailing: EditButton())
            .navigationTitle("Member")
        }
    }
}

#Preview {
    ContentView()
}
