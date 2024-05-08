//
//  ThumbnailView.swift
//  Day24
//
//  Created by Shun Sato on 2024/05/08.
//

import SwiftUI

struct ThumbnailView: View {
    let category: String
    
    let categories = ["Business", "Opinion & Analysis", "Editorial", "More Japan News", "Medical", "Environment", "Corporate"]
    

    // グリッドのレイアウトを定義。3列。
    let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]

    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 50) {
                ForEach(0..<20, id: \.self) { _ in
                    VStack{
                        Image("no_image")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .clipped()
                            .background(.blue)
                            .cornerRadius(10)
                    }
                }
            }
            .padding()
        }
        .navigationBarTitle(Text(category), displayMode: .inline)
    }
}

#Preview {
    ThumbnailView(category: "ビジネス")
}
