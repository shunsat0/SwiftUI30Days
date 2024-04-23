//
//  ContentView.swift
//  Day6
//
//  Created by Shun Sato on 2024/04/22.
//

import SwiftUI
import AuthenticationServices


struct ContentView: View {
    @State var username:String = ""
    @State var password:String = ""

    @State var isShowSecure = false
    
    var body: some View {
        ZStack {
            Circle()
                .foregroundColor(.blue)
                .frame(width: 200,height: 200)
            VStack {
                Spacer()
                
                Text("Welcome!")
                    .font(.title)
                    .bold()
                
                VStack(alignment:.leading,spacing: 16){
                    Text("Username")
                        .bold()
                    
                    TextField("Username", text: $username)
                        .padding(.vertical, 10)
                        .padding(.horizontal, 15)
                        .background(.white.opacity(0.1))
                        .clipShape(.rect(cornerRadius: 8, style: .continuous))
                    
                    Text("Password")
                        .bold()
                    
                    ZStack {
                        if(isShowSecure) {
                            TextField("Password", text: $password)
                                .padding(.vertical, 10)
                                .padding(.horizontal, 15)
                                .background(.white.opacity(0.1))
                                .clipShape(.rect(cornerRadius: 8, style: .continuous))
                        } else {
                            SecureField("Password", text: $password)
                                .padding(.vertical, 10)
                                .padding(.horizontal, 15)
                                .background(.white.opacity(0.1))
                                .clipShape(.rect(cornerRadius: 8, style: .continuous))
                        }
                        
                        HStack {
                            Spacer()
                            
                            Button(action: {
                                isShowSecure.toggle()
                            }, label: {
                                isShowSecure ? Image(systemName: "eye")
                                    .foregroundColor(Color.white.opacity(0.2)) : Image(systemName: "eye.slash")
                                    .foregroundColor(Color.white.opacity(0.2))
                                
                            })
                            .padding(.trailing,16)
                        }
                    }
                }
                
                Spacer()
                
                SignInWithAppleButton(.signUp) { request in
                } onCompletion: { result in
                }
                .signInWithAppleButtonStyle(.white)
                .frame(width: 250,height: 40)
                
                Spacer()
            }
            .padding()
            .frame(width: 350,height: 500)
            .background(.thinMaterial)
            .cornerRadius(16.0)
        }
    }
}

#Preview {
    ContentView()
}
