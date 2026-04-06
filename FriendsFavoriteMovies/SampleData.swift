//
//  SampleData.swift
//  FriendsFavoriteMovies
//
//  Created by soraya irie on 2026/04/06.
//

import Foundation
import SwiftData

class SampleData {
    static let shared = SampleData()

    let modelContainer: ModelContainer

    private init() {
        let schema = Schema([
            Friend.self,
            Movie.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: true)

        do {
            modelContainer = try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }
}
