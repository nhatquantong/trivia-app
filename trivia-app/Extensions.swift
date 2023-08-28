//
//  Extensions.swift
//  trivia-app
//
//  Created by Nhật Quân on 22/08/2023.
//

import Foundation
import SwiftUI

// Custom modifier to call this one-liner instead of adding three modifiers every time we create a title Text.
extension Text {
    func lilacTitle() -> some View {
        self.font(.title)
            .fontWeight(.heavy)
            .foregroundColor(.black)
    }
}
