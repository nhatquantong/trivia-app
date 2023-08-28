//
//  trivia_appApp.swift
//  trivia-app
//
//  Created by Nhật Quân on 22/08/2023.
//

import SwiftUI

@main
struct trivia_appApp: App {
    @StateObject private var triviaManager = TriviaManager()
    var body: some Scene {
        WindowGroup {
           ContentView()
                .environmentObject(triviaManager)
        }
    }
}
