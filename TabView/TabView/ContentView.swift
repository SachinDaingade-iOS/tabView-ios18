//
//  ContentView.swift
//  TabView
//
//  Created by Sachin Daingade on 30/06/24.
//

import SwiftUI

struct ContentView: View {
    @State var customization = TabViewCustomization()
    
    var body: some View {
        TabView {
            Tab("Parties", image: "party.popper") {
                PartiesView(parties: Party.all)
            }
            .customizationID("karaoke.tab.parties")
            
            Tab("Planning", image: "pencil.and.list.clipboard") {
                PlanningView()
            }
            .customizationID("karaoke.tab.planning")

            Tab("Attendance", image: "person.3") {
                AttendanceView()
            }
            .customizationID("karaoke.tab.attendance")

            Tab("Song List", image: "music.note.list") {
                SongListView()
            }
            .customizationID("karaoke.tab.songlist")
        }
        .tabViewStyle(.sidebarAdaptable)
        .tabViewCustomization($customization)
    }
}

struct PartiesView: View {
    var parties: [Party]
    var body: some View { Text("PartiesView") }
}

struct PlanningView: View {
    var body: some View { Text("PlanningView") }
}

struct AttendanceView: View {
    var body: some View { Text("AttendanceView") }
}

struct SongListView: View {
    var body: some View { Text("SongListView") }
}

struct Party {
    static var all: [Party] = []
}

#Preview {
    ContentView()
}
