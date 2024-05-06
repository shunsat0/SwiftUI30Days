//
//  ContentView.swift
//  Day22
//
//  Created by Shun Sato on 2024/05/06.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
         Link("Visit SwiftyPlace",
               destination: URL(string: "https://www.apple.com/")!)
    }
}

#Preview {
    ContentView()
}
