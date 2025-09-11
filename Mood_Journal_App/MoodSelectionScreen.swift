//
//  MoodSelectionScreen.swift
//  Mood_Journal_App
//
//  Created by Marcos Daniel Perez Bernal on 9/7/25.
//
import SwiftUI

struct MoodSelectionScreen: View {
    @EnvironmentObject var AppState: appState
    
    var body: some View {
        VStack(spacing: 40) {
            Text("Select your mood")
                .font(.largeTitle)
                .bold()
                .padding(.top, 30)
            
            HStack(spacing: 20) {
                Button(action: {
                    AppState.showEmoji = true
                    AppState.selected = .happy
                }) {
                    Text("😊")
                        .font(.system(size: 50))
                        .frame(width: 70, height: 70)
                        .background(Color.yellow.opacity(0.3))
                        .cornerRadius(20)
                        .shadow(color: Color.gray.opacity(0.4), radius: 5, x: 0, y: 4)
                }
                
                Button(action: {
                    AppState.showEmoji = true
                    AppState.selected = .sad
                }) {
                    Text("😢")
                        .font(.system(size: 50))
                        .frame(width: 70, height: 70)
                        .background(Color.blue.opacity(0.3))
                        .cornerRadius(20)
                        .shadow(color: Color.gray.opacity(0.4), radius: 5, x: 0, y: 4)
                }
                
                Button(action: {
                    AppState.showEmoji = true
                    AppState.selected = .angry
                }) {
                    Text("😡")
                        .font(.system(size: 50))
                        .frame(width: 70, height: 70)
                        .background(Color.red.opacity(0.3))
                        .cornerRadius(20)
                        .shadow(color: Color.gray.opacity(0.4), radius: 5, x: 0, y: 4)
                }
                
                Button(action: {
                    AppState.showEmoji = true
                    AppState.selected = .confused
                }) {
                    Text("😕")
                        .font(.system(size: 50))
                        .frame(width: 70, height: 70)
                        .background(Color.green.opacity(0.3))
                        .cornerRadius(20)
                        .shadow(color: Color.gray.opacity(0.4), radius: 5, x: 0, y: 4)
                }
            }
            .padding(.horizontal)
            
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.white)
        .navigationTitle("Mood Selection")
    }
}

struct MoodSelectionScreen_Previews: PreviewProvider {
    static var previews: some View {
        MoodSelectionScreen()
            .environmentObject(appState())
    }
}
