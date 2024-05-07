//
//  ContentView.swift
//  Day23
//
//  Created by Shun Sato on 2024/05/07.
//

import SwiftUI

struct ContentView: View {
    @State var isLarge: Bool = false
    
    var body: some View {
        VStack {
            Text("Animation")
                .font(.title)
                .foregroundStyle(.blue)
                .fontDesign(.serif)
            
            Spacer()
            
            Button {
                isLarge.toggle()
            } label: {
                Circle()
                    .frame(width: 100,height: 100)
                    .scaleEffect(isLarge ? 3 : 1)
                    .animation(.easeIn,value: isLarge)
                
            }
            
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
