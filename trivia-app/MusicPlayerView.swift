//
//  MusicPlayerView.swift
//  trivia-app
//
//  Created by Nhật Quân on 22/08/2023.
//

import SwiftUI
import AVFoundation
import AVKit

struct MusicPlayerView: View {
    @State private var isPlaying = false
        @State private var audioPlayer: AVAudioPlayer?
        
        var body: some View {
            VStack {
                Button(action: {
                    if isPlaying {
                        audioPlayer?.pause()
                    } else {
                        if audioPlayer == nil {
                            playMusic()
                        } else {
                            audioPlayer?.play()
                        }
                    }
                    isPlaying.toggle()
                }) {
                    Text(isPlaying ? "Pause Music" : "Play Music")
                        .padding()
                        .foregroundColor(.white)
                        .background(isPlaying ? Color.red : Color.green)
                        .cornerRadius(10)
                }
            }
        }
        
        private func playMusic() {
            guard let musicURL = Bundle.main.url(forResource: "y2mate.com - 뉴진스 Hype boy 벨소리 알람음 NewJeans Ringtone", withExtension: "mp3") else {
                print("Music file not found")
                return
            }
            
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: musicURL)
                audioPlayer?.numberOfLoops = -1 
                audioPlayer?.play()
            } catch {
                print("Error playing music: \(error.localizedDescription)")
            }
        }
}

struct MusicPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        MusicPlayerView()
    }
}
