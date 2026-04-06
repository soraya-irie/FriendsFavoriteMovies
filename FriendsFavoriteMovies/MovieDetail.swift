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
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    MovieDetail(movie: SampleData.shared.movie)
}
