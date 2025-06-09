//
//  ContentView2.swift
//  CoolTry_01
//
//  Created by 莊惠淇 on 2025/6/9.
//

import SwiftUI

struct ContentView2: View {
    @ObservedObject var appState = AppState.shared
    
    var body: some View {
        ZStack {
            Image(.star01)
                .resizable()
                .frame(width: 500, height: 990, alignment: .center)
                .blur(radius: 10)
            VStack {
                wordStyle(text: "\(appState.name)")
                wordStyle(text: "今天~")
                wordStyle(text: "想做什麼呢？")
                
            }
        }
    }
}
struct wordContent: View {
    let text: String
    var body: some View {
        Text(text)
            .font(.system(size: 35, weight: .bold, design: .some(.default)))
            .foregroundStyle(.white)
    }
}

#Preview {
    ContentView2()
}
