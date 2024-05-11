//
//  ContentView.swift
//  Day27
//
//  Created by Shun Sato on 2024/05/11.
//

import SwiftUI

struct ContentView: View {
    
    @State var showActionSheet: Bool = false
    var body: some View {
        Button(action: {
            showActionSheet.toggle()
        }, label: {
            Text("Show Action Sheet")
        })
        .actionSheet(isPresented: $showActionSheet) {
            ActionSheet(title: Text("Would you like to cancel it? "),
                        message: Text("This action cannot be undone"),
                        buttons: [
                            .default(Text("Yes")),
                            .cancel()
                        ])
        }
    }
}

#Preview {
    ContentView()
}
