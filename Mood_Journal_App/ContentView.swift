//
//  ContentView.swift
//  Mood_Journal_App
//
//  Created by Marcos Daniel Perez Bernal on 9/4/25.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var AppState: appState
    let currentDate = Date()
    
    let formatter: DateFormatter = {
        let f = DateFormatter()
        f.dateStyle = .medium
        f.timeStyle = .short
        return f
    }()
    var body: some View {
        NavigationStack {
            VStack {
                Text("\(formatter.string(from: currentDate))")
                Text("Welcome! How do you feel?")
                NavigationLink (destination: MoodSelectionScreen())
                {
                    VStack {
                        Image(systemName: "square.and.pencil.circle.fill")
                            .imageScale(.large)
                            .foregroundStyle(.tint)
                        Text("Edit Mood")
                    }
                }
                NavigationLink (destination: JournalScreen())
                {
                    VStack {
                        Image(systemName: "square.and.pencil.circle.fill")
                            .imageScale(.large)
                            .foregroundStyle(.tint)
                        Text("View Journal")
                    }
                }
                Text("Today's mood is")
                //Text(selectedMood)
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
            .padding()
        }
    }
struct ViewTwo_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(appState())
    }
}
