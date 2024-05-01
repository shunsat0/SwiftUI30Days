//
//  ContentView.swift
//  Day16
//
//  Created by Shun Sato on 2024/04/30.
//

import SwiftUI

struct ContentView: View {
    @GestureState private var dragOffset = CGSize.zero
    @State private var position = CGSize.zero
    
    var body: some View {
        Image(systemName: "cursorarrow.rays")
            .font(.system(size: 100))
            .offset(x: position.width + dragOffset.width, y: position.height + dragOffset.height)
            .animation(.easeInOut, value: dragOffset)
            .foregroundColor(.blue)
            .gesture(
                DragGesture()
                    .updating($dragOffset, body: { (value, state, transaction) in

                        state = value.translation
                    })
                    .onEnded({ (value) in
                        position.height += value.translation.height
                        position.width += value.translation.width
                    })
            )
    }
}

#Preview {
    ContentView()
}
