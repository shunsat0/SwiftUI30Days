//
//  ContentView.swift
//  Day7
//
//  Created by Shun Sato on 2024/04/23.
//

import SwiftUI

struct Character: Hashable {
    var name: String
}

struct ContentView: View {
    
    @State var characters = [
        Character(name: "吉田 正尚"),
        Character(name: "菊池 雄星"),
        Character(name: "前田 健太"),
        Character(name: "藤浪 晋太郎"),
        Character(name: "千賀 滉大"),
        Character(name: "今永 昇太"),
        Character(name: "鈴木 誠也"),
        Character(name: "ラーズ・ヌートバー"),
        Character(name: "大谷 翔平"),
        Character(name: "山本 由伸"),
        Character(name: "松井 裕樹"),
        Character(name: "ダルビッシュ 有")
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
                    Text("\(character.name)")
                }
                .onMove(perform: move)
                .onDelete(perform: deleteIem)
            }
            .navigationBarItems(trailing: EditButton())
            .navigationTitle("Member")
        }
    }
}

#Preview {
    ContentView()
}
