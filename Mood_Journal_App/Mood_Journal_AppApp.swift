//
//  Mood_Journal_AppApp.swift
//  Mood_Journal_App
//
//  Created by Marcos Daniel Perez Bernal on 9/4/25.
//

import SwiftUI

@main
struct Mood_Journal_AppApp: App {
    @StateObject var AppState = appState()
    var body: some Scene {
        WindowGroup {
            //ContentView()
            TabView {
                    MoodSelectionScreen()
                        .tabItem {Label("One", systemImage: "1.circle")}
                
                    ContentView()
                        .tabItem {Label("Two", systemImage: "2.circle")}
                }
            .environmentObject(AppState)
        }
    }
}
