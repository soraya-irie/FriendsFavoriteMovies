//
//  FilteredMovieList.swift
//  FriendsFavoriteMovies
//
//  Created by soraya irie on 2026/04/08.
//

import SwiftUI
import SwiftData

struct FilteredMovieList: View {
    var body: some View {
        MovieList()
    }
}

#Preview {
    FilteredMovieList()
        .modelContainer(SampleData.shared.modelContainer)
}
