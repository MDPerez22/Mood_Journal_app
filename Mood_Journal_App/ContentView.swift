//
//  ContentView.swift
//  Mood_Journal_App
//
//  Created by Marcos Daniel Perez Bernal on 9/4/25.
//

import SwiftUI

struct ContentView: View {
    
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
                NavigationLink (destination: MoodSelectionScreen()) {
                    VStack {
                        Image(systemName: "square.and.pencil.circle.fill")
                            .imageScale(.large)
                            .foregroundStyle(.tint)
                        Text("Edit Mood")
                    }
                }
                Text("Today's mood is (placeholder)")
            }
            .padding()
        }
    }
}
#Preview {
    ContentView()
}
