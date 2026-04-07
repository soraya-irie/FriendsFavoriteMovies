//
//  MovieDetail.swift
//  FriendsFavoriteMovies
//
//  Created by soraya irie on 2026/04/06.
//

import SwiftUI

struct MovieDetail: View {
    @Bindable var movie: Movie

    @Environment(\.dismiss) private var dismiss
    @Environment(\.modelContext) private var context

    var body: some View {
        Form {
            TextField("Movie title", text: $movie.title)

            DatePicker("Release date", selection: $movie.releaseDate, displayedComponents: .date)
        }
        .navigationTitle("Movie")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .confirmationAction) {
                Button("Save") {
                    dismiss()
                }
            }
            ToolbarItem(placement: .cancellationAction) {
                Button("Cancel") {
                    context.delete(movie)
                    dismiss()
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        MovieDetail(movie: SampleData.shared.movie)
    }
}
