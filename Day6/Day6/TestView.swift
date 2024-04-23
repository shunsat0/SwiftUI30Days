//
//  TestView.swift
//  Day6
//
//  Created by Shun Sato on 2024/04/23.
//

import SwiftUI
struct TestView: View {
　　    let titleKey: LocalizedStringKey
　　    @Binding var text: String
　　
　　    @State var isShowSecure = false
　　    @FocusState var isTextFieldFocused: Bool
　　    @FocusState var isSecureFieldFocused: Bool
　　
　　    init(_ titleKey: LocalizedStringKey, text: Binding<String>) {
　　        self.titleKey = titleKey
　　        _text = text
　　    }
　　
　　    var body: some View {
　　        HStack {
　　            ZStack {
　　                TextField(titleKey, text: $text)
　　                    .focused($isTextFieldFocused)
　　                    .keyboardType(.asciiCapable)
　　                    .autocorrectionDisabled(true)
　　                    .textInputAutocapitalization(.none)
　　                    .opacity(isShowSecure ? 1 : 0)
　　
　　                SecureField(titleKey, text: $text)
　　                    .focused($isSecureFieldFocused)
　　                    .opacity(isShowSecure ? 0 : 1)
　　            }
　　
　　            Button {
　　                if isShowSecure {
　　                    isShowSecure = false
　　                    isSecureFieldFocused = true
　　                } else {
　　                    isShowSecure = true
　　                    isTextFieldFocused = true
　　                }
　　
　　            } label: {
　　                Image(systemName: isShowSecure ? "eye" : "eye.slash")
　　            }
　　            .buttonStyle(.plain)
　　        }
　　        .padding()
　　        .overlay(
　　            RoundedRectangle(cornerRadius: 16)
　　                .stroke(Color.primary, lineWidth: 1)
　　        )
　　    }
　　}
}

#Preview {
    TestView()
}
