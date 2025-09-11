//
//  JournalScreen.swift
//  Mood_Journal_App
//
//  Created by Marcos Daniel Perez Bernal on 9/7/25.
//
import SwiftUI

struct JournalScreen: View {
    @EnvironmentObject var AppState: appState
    var body: some View {
        Text ("History of moods:")
       Text ("Sept 9, 2025 🙂")
        Text ("Sept 8, 2025 😴")
        Text ("Sept 7, 2025 😡")
        
        if AppState.showEmoji {
            switch AppState.selected {
            case .happy:
                Text ("😊 - Happy")
            case .sad:
                Text ("😢 - Sad")
            case .angry:
                Text ("😡 - Angry")
            case .confused:
                Text ("😕 - Confused")
            }
        }

    }
}

struct ViewThree_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(appState())
    }
}
