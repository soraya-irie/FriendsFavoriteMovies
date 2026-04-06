//
//  SampleData.swift
//  FriendsFavoriteMovies
//
//  Created by soraya irie on 2026/04/06.
//

import Foundation
import SwiftData

class SampleData {
    let modelContainer: ModelContainer

    init() {
        let schema = Schema([
            Friend.self,
            Movie.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: true)

        modelContainer = ModelContainer(for: schema, configurations: [modelConfiguration])
    }
}
