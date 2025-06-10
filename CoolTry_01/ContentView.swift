//
//  ContentView.swift
//  CoolTry_01
//
//  Created by 莊惠淇 on 2025/6/8.
//

import SwiftUI

struct ContentView: View {
    @State private var isBlur: Bool = false
    @ObservedObject var appState = AppState.shared
    @AppStorage("請輸入你的名字") private var name: String = ""
    @State private var inputName = ""
    @State private var showNext: Bool = false
    var body: some View {
        if showNext {
            ContentView2()
                .transition(.move(edge: .bottom).combined(with: .opacity))
        } else {
            ZStack {
                Image(.star01)
                    .resizable()
                    .frame(width: 500, height: 990, alignment: .center)
                    .blur(radius: 10)
                    //.blur(radius: isBlur ? 10 : 0)
                    //.animation(.easeInOut(duration: 3).repeatForever(autoreverses: true), value: isBlur)
                    //.onAppear{isBlur.toggle()}
                VStack {
                    wordStyle(text: "你是誰?")
                    TextField("請輸入你的名字", text: $inputName)
                        .textFieldStyle(.roundedBorder)
                        .font(.title)
                        
                        .frame(height: 150)
                        .padding(.horizontal,60)
                    Button {
                        appState.name = inputName
                        withAnimation {
                            showNext = true
                        }
                    } label: {
                        Text("確定")
                            .font(.system(size: 30, weight: .bold, design: .rounded))
                            .foregroundStyle(.white)
                            .padding()
                            .background(.linearGradient(colors:[.blue,.black,.blue], startPoint: .leading, endPoint: .trailing))
                            .clipShape(.rect(cornerRadius: 20))
                    }
                }
                .padding()
            }
        }
    }
}

struct wordStyle: View {
    let text: String
    var body: some View {
        Text(text)
            .font(.system(size: 50, weight: .bold, design: .some(.default)))
            .foregroundStyle(.white)
    }
}
#Preview {
    ContentView()
}
