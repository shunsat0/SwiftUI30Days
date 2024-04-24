//
//  ContentView.swift
//  Day8
//
//  Created by Shun Sato on 2024/04/24.
//

import SwiftUI

//struct ContentView: View {
//    
//    @State var isEditing: Bool = true
//    @State var something: String = ""
//    
//    var body: some View {
//        ZStack {
//            Rectangle()
//                .foregroundColor(Color(UIColor(red:0.91, green:0.92, blue:0.94, alpha:1.0)))
//                .edgesIgnoringSafeArea(.all)
//            VStack {
//                Spacer()
//                VStack {
//                    Group {
//                        TextField("Say something...", text: $something) {
//                        }
//                        .font(.system(size: 32, weight: .black))
//                        .foregroundColor(Color.black)
//                        .accentColor(Color.blue)
//                        .padding(.vertical, 32)
//                        .padding(.horizontal, 32)
//                        .background(isEditing ?
//                                    Color.blue.frame(width: nil, height: nil).offset(x: 0)
//                                    :
//                                        Color.white.frame(width: 0, height: 0).offset(x: 64.0 - (UIScreen.main.bounds.size.width / 2.0))
//                        )
//                        .cornerRadius(16)
//                        .animation(.spring(response: 1.0))
//                    }
//                    .padding(.horizontal,32)
//                    .onTapGesture {
//                        self.isEditing.toggle()
//                    }
//                }
//                Spacer()
//                Text("a little work with 🗣")
//                    .foregroundColor(Color.black.opacity(0.5))
//                    .font(.system(size: 17, weight: .regular))
//                    .italic()
//                    .padding(.top, 16)
//                    .padding(.bottom, 16)
//            }
//        }
//    }
//}

struct ContentView: View {
    @State var isEditing: Bool = true
    @State var something: String = ""

    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(Color(UIColor(red:0.91, green:0.92, blue:0.94, alpha:1.0)))
                .edgesIgnoringSafeArea(.all)
            VStack {
                Spacer()
                VStack {
                    Group {
                        TextField("Say something...",text: $something)
                            .font(.title)
                            .foregroundColor(.black)
                            .accentColor(.blue)
                            .padding(.vertical, 32)
                            .padding(.horizontal, 32)
                            .background(isEditing ?
                                        Color.blue.frame(width: nil, height: nil).offset(x: 0)
                                        :
                                            Color.white.frame(width: 0, height: 0).offset(x: 64.0 - (UIScreen.main.bounds.size.width / 2.0))
                            )
                            .cornerRadius(16.0)
                            .animation(.spring(response: 1.0), value: true)
                    }
                    .padding(.horizontal, 32)
                    .onTapGesture {
                        isEditing.toggle()
                    }
                }
                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
