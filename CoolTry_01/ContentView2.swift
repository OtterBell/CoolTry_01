//
//  ContentView2.swift
//  CoolTry_01
//
//  Created by 莊惠淇 on 2025/6/9.
//

import SwiftUI

struct ContentView2: View {
    @State var name: String = ""
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        Text("You are \(name)")
    }
}

#Preview {
    ContentView2()
}
