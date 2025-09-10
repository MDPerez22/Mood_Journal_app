//
//  MoodSelectionScreen.swift
//  Mood_Journal_App
//
//  Created by Marcos Daniel Perez Bernal on 9/7/25.
//
import SwiftUI

struct MoodSelectionScreen: View {
    @EnvironmentObject var AppState: appState
    
    var happy: String = "😊"
    var sad: String = "😢"
    var angry: String = "😡"
    var confused: String = "😕"
    
    enum selectedMood {
        case happy
        case sad
        case angry
        case confused
    }
    
    @State private var selected: selectedMood = .happy
    
    var body: some View {
        VStack {
            Text("Select your mood")
                .font(.largeTitle)
                .padding()
            HStack {
                Button ("😊") {
                    AppState.showEmoji = true
                    AppState.selected = .happy
                }
                Button ("😢") {
                    AppState.showEmoji = true
                    AppState.selected = .sad
                }
                Button ("😡") {
                    AppState.showEmoji = true
                    AppState.selected = .angry
                }
                Button ("😕") {
                    AppState.showEmoji = true
                    AppState.selected = .confused
                }
                Spacer()
            }
        }
        .navigationTitle("Mood Selection")
        
    }
    }

struct ViewOne_Previews: PreviewProvider {
    static var previews: some View {
        MoodSelectionScreen()
            .environmentObject(appState())
    }
}
/*#Preview {
    MoodSelectionScreen(selectedMood: .constant(""))
}
*/
