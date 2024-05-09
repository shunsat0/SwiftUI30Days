//
//  ContentView.swift
//  Day25
//
//  Created by Shun Sato on 2024/05/09.
//

import SwiftUI
import PhotosUI

struct ContentView: View {
    @State var selectedItem: PhotosPickerItem?
    @State var image: UIImage?
    
    var body: some View {
        if let image {
            Image(uiImage: image)
                .resizable()
                .scaledToFit()
                .padding(20)
        }
        
        VStack {
            PhotosPicker(selection: $selectedItem, matching: .images) {
                Label(
                    title: { Text("Pick a Photo") },
                    icon: { Image(systemName: "photo") }
                )
            }
            .onChange(of: selectedItem) {
                Task {
                    guard let imageData = try await selectedItem?.loadTransferable(type: Data.self) else { return }
                    guard let uiImage = UIImage(data: imageData) else { return }
                    image = uiImage
                }
            }
            
        }
    }
}

#Preview {
    ContentView()
}
