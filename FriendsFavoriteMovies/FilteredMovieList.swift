//
//  FilteredMovieList.swift
//  FriendsFavoriteMovies
//
//  Created by soraya irie on 2026/04/08.
//

import SwiftUI
import SwiftData

struct FilteredMovieList: View {
    @State private var searchText = ""

    var body: some View {
        NavigationSplitView {
            MovieList(titleFilter: searchText)
                .searchable(text: $searchText)
        } detail: {
            Text("Select a movie")
                .navigationTitle("Movie")
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    FilteredMovieList()
        .modelContainer(SampleData.shared.modelContainer)
}
