//
//  ContentView.swift
//  Day3
//
//  Created by Shun Sato on 2024/04/16.
//

import SwiftUI

struct ContentView: View {
    @State var colorR: Double?
    @State var colorG: Double?
    @State var colorB: Double?
    
    var body: some View {
        ZStack {
            // 矩形
            Rectangle()
                .foregroundColor(Color(red: colorR ?? 0.5, green: colorG ?? 0.5, blue: colorB ?? 0.5, opacity: 1.0))
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/) // 画面のどの範囲まで広げるか
        }
    }
}

#Preview {
    ContentView()
}
