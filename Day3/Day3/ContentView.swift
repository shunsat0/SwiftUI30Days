//
//  ContentView.swift
//  Day3
//
//  Created by Shun Sato on 2024/04/16.
//

import SwiftUI

struct ContentView: View {
    @State var colorR: Double
    @State var colorG: Double
    @State var colorB: Double
    
    var body: some View {
        ZStack {
            // 矩形
            Rectangle()
                .foregroundColor(Color(red: colorR, green: colorG, blue: colorB, opacity: 1.0))
                .edgesIgnoringSafeArea(.all) // 画面のどの範囲まで広げるか
            
            VStack {
                VStack {
                    ZStack {
                        Rectangle()
                            .cornerRadius(16.0)
                            .frame(height: 100)
                            .foregroundColor(Color(red: 1.25 - (colorR + colorG * 2.0 + colorB) / 3.0, green: 1.25 - (colorR + colorG * 2.0 + colorB) / 3.0, blue: 1.25 - (colorR + colorG * 2.0 + colorB) / 3.0, opacity: 0.5))
                        
                        HStack {
                            Text("R: \(Int((colorR) * 255.0))")
                            Text("G: \(Int((colorG) * 255.0))")
                            Text("B: \(Int((colorB) * 255.0))")
                        }
                        .font(Font.custom("Furuta", size: 28))
                        .foregroundColor(Color(red: colorR, green: colorG , blue: colorB, opacity: 1.0))
                    }
                    .padding(.all, 32)
                    .padding(.top, 50)
                    Spacer()
//                    Rectangle()
//                        .hidden()
                    
                    ZStack {
                        Rectangle()
                            .foregroundColor(.white)
                            .contrast(16.0)
                            .shadow(radius: 10)
                            .frame(width: 350,height: 250)
                            .cornerRadius(20.0)
                            .padding()
                        
                        VStack(alignment: .leading) {
                            HStack {
                                Image(systemName: "r.circle")
                                    .foregroundColor(.red.opacity(0.5))
                                    .font(.system(size: 20))
                                Slider(value: $colorR, in: 0.0 ... 1.0)
                                    .accentColor(.red)
                                
                                Image(systemName: "r.circle.fill")
                                    .foregroundColor(.red)
                                    .font(.system(size: 20))
                            }.padding()
                            
                            HStack {
                                Image(systemName: "g.circle")
                                    .foregroundColor(.green.opacity(0.5))
                                    .font(.system(size: 20))
                                Slider(value: $colorG, in: 0.0 ... 1.0)
                                    .accentColor(.green)
                                
                                Image(systemName: "r.circle.fill")
                                    .foregroundColor(.green)
                                    .font(.system(size: 20))
                            }.padding()
                            
                            HStack {
                                Image(systemName: "b.circle")
                                    .foregroundColor(.blue.opacity(0.5))
                                    .font(.system(size: 20))
                                Slider(value: $colorB, in: 0.0 ... 1.0)
                                    .accentColor(.blue)
                                
                                Image(systemName: "b.circle.fill")
                                    .foregroundColor(.blue)
                                    .font(.system(size: 20))
                            }.padding()
                        }
                        .padding()
                    }
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    ContentView(colorR: 0.5, colorG: 0.5, colorB: 0.5)
}
