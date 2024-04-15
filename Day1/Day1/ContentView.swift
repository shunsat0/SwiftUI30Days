//
//  ContentView.swift
//  Day1
//
//  Created by Shun Sato on 2024/04/14.
//

import SwiftUI

struct ContentView: View {
   @State var timeCount: Double = 0.0
   @State var timer: Timer? = nil
   
   func timeString(time: Double) -> String {
       return String(format: "%.1f", time)
   }
   
   func startTimer() {
       stopTimer()
       
       timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true, block: { _ in
           self.timeCount += 0.1
       })
   }
   
   func stopTimer() {
       timer?.invalidate()
       timer = nil
   }
   
   func resetTimer() {
       stopTimer()
       timeCount = 0.0
   }
   
   var body: some View {
       VStack {
           Text(timeString(time: timeCount))
//               .onAppear(
//                   perform: {
//                       let _ = self.timer
//                   }
//               )
               .font(.largeTitle)
           
           HStack {
               // Start
               Button(action: {
                   startTimer()
               }, label: {
                   Text("スタート")
                       .padding()
               })
               
               // Stop
               Button(action: {
                   stopTimer()
               }, label: {
                   Text("ストップ")
                       .padding()
               })
               
               Button(action: {
                   resetTimer()
               }, label: {
                   Text("リセット")
                       .padding()
               })
               
           }
           .padding()
       }
       
   }
}

#Preview {
   ContentView()
}

