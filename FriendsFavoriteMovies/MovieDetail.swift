//
//  MovieDetail.swift
//  FriendsFavoriteMovies
//
//  Created by soraya irie on 2026/04/06.
//

import SwiftUI

struct MovieDetail: View {
    @Bindable var movie: Movie

    var body: some View {
        Form {
            TextField("Movie title", text: $movie.title)
        }
    }
}

#Preview {
    MovieDetail(movie: SampleData.shared.movie)
}
