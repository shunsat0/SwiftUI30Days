//
//  ContentView.swift
//  Day26
//
//  Created by Shun Sato on 2024/05/10.
//

import SwiftUI
import Charts

struct ContentView: View {
    let weekdays = Calendar.current.shortWeekdaySymbols
    let steps = [1000,2000,3000,3000,6000,10000,8000]
    
    var body: some View {
        Chart {
            ForEach(weekdays.indices,id: \.self) { index in
                BarMark(
                    x: .value("Day", weekdays[index]),
                    y: .value("Steps",steps[index])
                )
                .foregroundStyle(by: .value("Day", weekdays[index]))
                .annotation {
                    Text("\(steps[index])")
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
