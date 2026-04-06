//
//  ContentView.swift
//  FriendsFavoriteMovies
//
//  Created by soraya irie on 2026/04/03.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    var body: some View {
        TabView {
            Tab("Friends", systemImage: "person.and.person") {
                FriendList()
            }

            Tab("Movies", systemImage: "film.stack") {
                MovieList()
            }
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(SampleData.shared.modelContainer)
}
