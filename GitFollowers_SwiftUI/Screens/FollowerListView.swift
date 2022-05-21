//
//  FollowerListView.swift
//  GitFollowers_SwiftUI
//
//  Created by Rian Harshaw on 5/13/22.
//

import SwiftUI

struct FollowerListView: View {
    let threeColumns = [GridItem(), GridItem(), GridItem()]
    @Binding var username: String
    @StateObject var viewModel = FollowerViewModel()
    
    var body: some View {
            ScrollView {
                LazyVGrid(columns: threeColumns) {
                    ForEach(viewModel.followers, id: \.self) { follower in
                            FollowerData(urlString: follower.avatarUrl, followerUsername: follower.login, data: nil)
                    }
                }
                   .onAppear {
                    getFollowers()
               }
            }
    }
    
    func getFollowers() {
        viewModel.getFollower(username: username, page: 1)
    }
}

//struct FollowerListView_Previews: PreviewProvider {
//    static var previews: some View {
//        FollowerListView()
//    }
//}
