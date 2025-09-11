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

    var backgroundColor: Color {
        switch AppState.selected {
        case .happy:
            return Color.yellow.opacity(0.3)
        case .sad:
            return Color.blue.opacity(0.3)
        case .angry:
            return Color.red.opacity(0.3)
        case .confused:
            return Color.green.opacity(0.3)
        default:
            return Color.white
        }
    }
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 30) {
                
                VStack(spacing: 5) {
                    Text(formatter.string(from: currentDate))
                        .font(.headline)
                        .foregroundColor(.gray)
                    Text("Welcome! How do you feel today?")
                        .font(.title2)
                        .bold()
                }
            
                HStack(spacing: 20) {
                    NavigationLink(destination: MoodSelectionScreen()) {
                        VStack {
                            Image(systemName: "square.and.pencil.circle.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50, height: 50)
                                .foregroundColor(.orange)
                            Text("Edit Mood")
                                .fontWeight(.semibold)
                        }
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.white.opacity(0.7))
                        .cornerRadius(15)
                        .shadow(radius: 5)
                    }
                    
                    NavigationLink(destination: JournalScreen()) {
                        VStack {
                            Image(systemName: "book.circle.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50, height: 50)
                                .foregroundColor(.purple)
                            Text("View Journal")
                                .fontWeight(.semibold)
                        }
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.white.opacity(0.7))
                        .cornerRadius(15)
                        .shadow(radius: 5)
                    }
                }

                VStack(spacing: 10) {
                    Text("Today's mood is:")
                        .font(.headline)
                    
                    if AppState.showEmoji {
                        switch AppState.selected {
                        case .happy:
                            Text("😊 Happy")
                                .font(.largeTitle)
                        case .sad:
                            Text("😢 Sad")
                                .font(.largeTitle)
                        case .angry:
                            Text("😡 Angry")
                                .font(.largeTitle)
                        case .confused:
                            Text("😕 Confused")
                                .font(.largeTitle)
                        }
                    }
                }
                Spacer()
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(backgroundColor)
            .animation(.easeInOut, value: AppState.selected)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(appState())
    }
}
