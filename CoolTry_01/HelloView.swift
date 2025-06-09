//
//  HelloView.swift
//  Final_app
//
//  Created by 莊惠淇 on 2025/6/7.
//

import SwiftUI
import Kingfisher

struct HelloView: View {
    @State private var floatWords = false
    @State private var showNext = false
    var body: some View {
        ZStack {
            KFImage(URL(string: "https://i.pinimg.com/736x/eb/1e/a7/eb1ea72901dc51127f676d2b4289c86a.jpg"))
            
            WelcomView(text: "W",delay: 0).offset(x: -100)
            WelcomView(text: "e", delay: 0.2).offset(x: -60)
            WelcomView(text: "l", delay: 0.4).offset(x: -35)
            WelcomView(text: "c", delay: 0.6).offset(x: -10)
            WelcomView(text: "o", delay: 0.8).offset(x: 18)
            WelcomView(text: "m", delay: 1).offset(x: 55)
            WelcomView(text: "e", delay: 1.2).offset(x: 90)
            WelcomView(text: "!", delay: 1.4).offset(x: 115)
            
            if !showNext {
                Button {
                    withAnimation {
                        showNext = true
                    }
                } label: {
                    KFImage(URL(string: "https://i.pinimg.com/736x/eb/1e/a7/eb1ea72901dc51127f676d2b4289c86a.jpg"))
                        .opacity(0)
                }
                
            }else {
                ContentView()
                    .transition(.move(edge: .bottom).combined(with: .opacity))
            }

        }
    }
}
struct WelcomView: View {
    @State private var floatWords = false
    let text: String
    let delay: Double
    var body: some View {
        Text(text)
            .font(.system(size: 50, weight: .bold, design: .rounded))
            .foregroundColor(.white)
            .offset(y: floatWords ? -20 : 0)
            .animation(.easeInOut(duration:1).repeatForever(autoreverses: true).delay(delay),value: floatWords)
            .onAppear{floatWords.toggle()}
    }
}

#Preview {
    HelloView()
}
