//
//  SettingView.swift
//  trivia-app
//
//  Created by Quan Tong Nhat on 25/08/2023.
//

import SwiftUI

struct SettingView: View {
    @State private var isDarkMode = false
    
    var body: some View {
        ZStack{
            Color("electric-blue")
                .edgesIgnoringSafeArea(.all)
            VStack {
                       Button(action: {
                           isDarkMode.toggle()
                           if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene {
                                             windowScene.windows.first?.overrideUserInterfaceStyle = isDarkMode ? .dark : .light
                                         }
                       }) {
                           Text(isDarkMode ? "Light mode" : "Dark mode")
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
                       .padding()
                       .frame(maxWidth: .infinity)
                   }
        }
        
               .environment(\.colorScheme, isDarkMode ? .dark : .light)
    }}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()

    }
}
