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
        NavigationStack {
            ZStack {
                Image(.star01)
                    .resizable()
                    .frame(width: 500, height: 990, alignment: .center)
                    .blur(radius: 10)
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 500, height: 990)
                    .opacity(0.5)
                VStack {
                    wordContent(text: "\(appState.name)")
                    wordContent(text: "今天~")
                    wordContent(text: "想做什麼呢？")
                    
                    HStack {
                        StyledNavigationLink(title: "Mood", destination: MoodView())
                        StyledNavigationLink(title: "Daily", destination: DailyView())
                    }
                    HStack {
                        StyledNavigationLink(title: "Birth", destination: BirthdayView())
                        StyledNavigationLink(title: "Game", destination: GameView())
                    }
                }
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
struct StyledNavigationLink<Destination: View>: View {
    let title: String
    let destination: Destination

    var body: some View {
        NavigationLink(destination: destination) {
            Text(title)
                .font(.system(size: 35, weight: .bold, design: .default))
                .frame(width: 100, height: 50)
                .padding()
                .background(Color.blue)
                .foregroundStyle(.white)
                .cornerRadius(20)
                .overlay(content: {
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color(red: 82/255, green: 243/255, blue: 255/255),lineWidth: 7)
                })
                .shadow(radius: 3)
                .padding()
        }
    }
}
#Preview {
    ContentView2()
}
