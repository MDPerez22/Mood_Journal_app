//
//  appState.swift
//  Mood_Journal_App
//
//  Created by Marcos Daniel Perez Bernal on 9/10/25.
//
import SwiftUI

enum selectedMood {
    case happy, sad, angry, confused
}

class appState: ObservableObject {
    @Published var showEmoji = false
    @Published var selected: selectedMood = .happy
}
