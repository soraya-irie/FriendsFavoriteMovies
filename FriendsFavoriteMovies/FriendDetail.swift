//
//  FriendDetail.swift
//  FriendsFavoriteMovies
//
//  Created by soraya irie on 2026/04/06.
//

import SwiftUI

struct FriendDetail: View {
    @Bindable var friend: Friend

    var body: some View {
        Form {
            TextField("Name", text: $friend.name)
                .autocorrectionDisabled()
        }
    }
}

#Preview {
    FriendDetail(friend: SampleData.shared.friend)
}
