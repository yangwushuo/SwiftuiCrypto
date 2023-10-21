//
//  SwiftfulCryptoApp.swift
//  SwiftfulCrypto
//
//  Created by Jason on 2023/10/21.
//

import SwiftUI

@main
struct SwiftfulCryptoApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
                    .navigationBarHidden(true)
            }
        }
    }
}
