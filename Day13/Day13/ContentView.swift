//
//  ContentView.swift
//  Day13
//
//  Created by Shun Sato on 2024/04/27.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Grid {
            GridRow {
                Color.purple
                Color.orange
            }
            
            GridRow {
                Color.green
                Color.yellow
            }
        }
    }
}

#Preview {
    ContentView()
}
