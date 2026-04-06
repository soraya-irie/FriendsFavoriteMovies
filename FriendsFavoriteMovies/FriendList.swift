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
        NavigationSplitView {
            List {
                ForEach(friends) { friend in
                    Text(friend.name)
                }
            }
        } detail: {

        }
    }
}

#Preview {
    FriendList()
        .modelContainer(SampleData.shared.modelContainer)
}
