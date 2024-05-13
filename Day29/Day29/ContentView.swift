//
//  ContentView.swift
//  Day29
//
//  Created by Shun Sato on 2024/05/13.
//

import SwiftUI

struct ContentView: View {
    
    @State var selectedDate: Date
    
    var body: some View {
        DatePicker("날짜를 선택하세요", selection: $selectedDate)
            .padding()
        
    }
}

#Preview {
    ContentView(selectedDate: Date())
}
