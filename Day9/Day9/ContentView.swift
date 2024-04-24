//
//  ContentView.swift
//  Day9
//
//  Created by Shun Sato on 2024/04/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Form {
                Section {
                    Label {
                        Text("ソフトフェアアップデート")
                    } icon: {
                        Image(systemName: "gear.badge")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 13, height: 13)
                            .padding(3)
                            .background(.gray)
                            .cornerRadius(3)
                    }

                    Label {
                        Text("ストレージ")
                    } icon: {
                        Image(systemName: "externaldrive.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 13, height: 13)
                            .padding(3)
                            .background(.gray)
                            .cornerRadius(3)
                    }
                }

                Section {
                    Picker("アクセントカラー", selection: .constant(0)) {
                        Text("red").tag(0)
                        Text("green").tag(1)
                        Text("orange").tag(2)
                    }

                    Toggle("通知", isOn: .constant(true))

                    LabeledContent("バージョン") {
                        Text("1.0.0")
                    }
                }

                Section {
                    Picker("スクロールバーを表示", selection: .constant(0)) {
                        Text("マウスまたはトラックパッドに基づいて自動的に表示").tag(0)
                        Text("スクロール時に表示").tag(1)
                        Text("常に表示").tag(2)
                    }
                    .pickerStyle(.radioGroup)
                }
            }
            .formStyle(.grouped)


        }
        .frame(width: 700, height: 500)
    }
}

#Preview {
    ContentView()
}
