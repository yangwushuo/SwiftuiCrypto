//
//  ContentView.swift
//  SwiftfulCrypto
//
//  Created by Jason on 2023/10/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.theme.background
                .ignoresSafeArea()
            VStack {
                Text("主要颜色")
                    .foregroundColor(Color.theme.accent)
            }
        }
    }
}

#Preview {
    ContentView()
}
