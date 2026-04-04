//
//  Movie.swift
//  FriendsFavoriteMovies
//
//  Created by soraya irie on 2026/04/04.
//

import Foundation
import SwiftData

@Model
class Movie {
    var title: String
    var releaseDate: Date

    init(title: String, releaseDate: Date) {
        self.title = title
        self.releaseDate = releaseDate
    }
}
