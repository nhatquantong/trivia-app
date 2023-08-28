//
//  NameView.swift
//  trivia-app
//
//  Created by Quan Tong Nhat on 25/08/2023.
//

import SwiftUI

struct NameView: View {
    @State private var textFieldContent = ""
    @StateObject var triviaManager = TriviaManager()
    var body: some View {
        NavigationStack{
            ZStack{
                Color("electric-blue")
                    .edgesIgnoringSafeArea(.all)
                VStack{
                    TextField("User name", text: $textFieldContent)
                        .textContentType(.givenName)
                        .multilineTextAlignment(.center)
                        .padding(.bottom, 100)
                    NavigationLink {
                        TriviaView()
                            .environmentObject(triviaManager)
                            
                    } label: {
                        Text("New Game")
                                                      .frame(maxWidth: 250)
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
                }
                
            }
            
        }
       
    }
}

struct NameView_Previews: PreviewProvider {
    static var previews: some View {
        NameView()
    }
}
