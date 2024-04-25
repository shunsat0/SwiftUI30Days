//
//  ContentView.swift
//  Day11
//
//  Created by Shun Sato on 2024/04/26.
//

import SwiftUI
import AVFoundation

struct ContentView: View {
    private let sound = try! AVAudioPlayer(data: NSDataAsset(name: "manuke")!.data)
    
    private func playSound() {
        sound.play()
    }
    
    var body: some View {
        Button(action: {
            // Do Something
            playSound()
        }, label: {
            Text("再生")
                .font(.title)
        })
    }
}

#Preview {
    ContentView()
}
