//
//  Music.swift
//  trivia-app
//
//  Created by Nhật Quân on 22/08/2023.
//

import SwiftUI

struct Music: Identifiable {
    let id = UUID()
    let title: String
    let artist: String
    let audioURL: URL
}

