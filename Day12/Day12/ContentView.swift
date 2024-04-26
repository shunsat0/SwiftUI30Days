//
//  ContentView.swift
//  Day12
//
//  Created by Shun Sato on 2024/04/26.
//

import SwiftUI

struct ContentView: View {
    @State var colorChange:Bool = false
    @State var sizeChange:Bool = false
    
    var body: some View {
        Image(systemName: "heart.fill")
            .font(.system(size: 200))
            .foregroundColor(colorChange ? .yellow : .red)
            .scaleEffect(sizeChange ? 1.5 : 1)
            .animation(.bouncy, value: true)
            .onTapGesture {
                colorChange.toggle()
            }
            .onLongPressGesture{
                sizeChange.toggle()
            }
    }
}

#Preview {
    ContentView()
}
