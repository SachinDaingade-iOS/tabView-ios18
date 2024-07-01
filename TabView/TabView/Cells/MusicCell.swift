//
//  MusicCell.swift
//  TabView
//
//  Created by Sachin Daingade on 01/07/24.
//
import SwiftUI

struct MusicCell: View {
    var body: some View {
        HStack {
            Label("Marathi Songs", systemImage: "music.mic.circle")
            Spacer()
            Text("Test Sang Sang")
        }
    }
}

#Preview {
    MusicCell()
}
