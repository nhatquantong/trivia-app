//
//  ContentView.swift
//  trivia-app
//
//  Created by Nhật Quân on 22/08/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            NavigationStack{
                ZStack{
                    Color("electric-blue")
                        .edgesIgnoringSafeArea(.all)
                    VStack(spacing: 25.0){
                        MusicPlayerView()
                        Text("TRIVIA")
                            .font(.custom("GUMDROP", size: 90))
                        Image("icon")
                        NavigationLink(destination: MusicPlayerView()) {
                            Text("New Game")
                               .frame(maxWidth: 250)}
                                .padding()
                                .foregroundColor(Color.black)
                                .background(
                                           RoundedRectangle(cornerRadius: 30)
                                               .fill(Color("blue")) // Set your desired background color here
                                       )
                                .overlay(
                                    RoundedRectangle(cornerRadius: 30)
                                    .stroke(Color.black, lineWidth: 5))
                                .font(.custom("GUMDROP", size: 24))
                        NavigationLink(destination: MusicPlayerView()) {
                            Text("Leaderboard")
                               .frame(maxWidth: 250)}
                                .padding()
                                .foregroundColor(Color.black)
                                .background(
                                           RoundedRectangle(cornerRadius: 30)
                                               .fill(Color("blue")) // Set your desired background color here
                                       )
                                .overlay(
                                    RoundedRectangle(cornerRadius: 30)
                                    .stroke(Color.black, lineWidth: 5))
                                .font(.custom("GUMDROP", size: 24))
                        NavigationLink(destination: MusicPlayerView()) {
                            Text("How To Play")
                               .frame(maxWidth: 250)}
                                .padding()
                                .foregroundColor(Color.black)
                                .background(
                                           RoundedRectangle(cornerRadius: 30)
                                               .fill(Color("blue")) // Set your desired background color here
                                       )
                                .overlay(
                                    RoundedRectangle(cornerRadius: 30)
                                    .stroke(Color.black, lineWidth: 5))
                                .font(.custom("GUMDROP", size: 24))
                        NavigationLink(destination: MusicPlayerView()) {
                            Text("Settings")
                               .frame(maxWidth: 250)}
                                .padding()
                                .foregroundColor(Color.black)
                                .background(
                                           RoundedRectangle(cornerRadius: 30)
                                               .fill(Color("blue")) // Set your desired background color here
                                       )
                                .overlay(
                                    RoundedRectangle(cornerRadius: 30)
                                    .stroke(Color.black, lineWidth: 5))
                                .font(.custom("GUMDROP", size: 24))
                    }
                    .padding(.bottom,80)
                    
                    
                }
            }
        }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
