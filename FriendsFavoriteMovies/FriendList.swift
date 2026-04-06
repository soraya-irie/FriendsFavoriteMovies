//
//  FriendList.swift
//  FriendsFavoriteMovies
//
//  Created by soraya irie on 2026/04/04.
//

import SwiftUI
import SwiftData

struct FriendList: View {
    @Query(sort: \Friend.name) private var friends: [Friend]
    @Environment(\.modelContext) private var context

    var body: some View {
        List {
            ForEach(friends) { friend in
                Text(friend.name)
            }
        }

    }
}

#Preview {
    FriendList()
        .modelContainer(for: Friend.self, inMemory: true)
}
