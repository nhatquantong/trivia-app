//
//  TriviaView.swift
//  trivia-app
//
//  Created by Nhật Quân on 22/08/2023.
//

import SwiftUI

struct TriviaView: View {
    @EnvironmentObject var triviaManager: TriviaManager

    var body: some View {
        if triviaManager.reachedEnd {
            VStack(spacing: 20) {
                Text("Welcome, \(triviaManager.userName)")
                    .lilacTitle()

                Text("Congratulations, you completed the game! 🥳")
                    .foregroundColor(.black)
                
                Text("You scored \(triviaManager.score) out of \(triviaManager.length)")
                    .foregroundColor(.black)
                
                Button {
                    Task.init {
                        await triviaManager.fetchTrivia()
                    }
                } label: {
                    PrimaryButton(text: "Play again")
                }
            }
            .navigationBarBackButtonHidden(true)
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color("electric-blue"))
        } else {
            QuestionView()
                .environmentObject(triviaManager)
        }
    }
}

struct TriviaView_Previews: PreviewProvider {
    static var previews: some View {
        TriviaView()
            .environmentObject(TriviaManager())
    }
}
