//
//  FollowerListView.swift
//  GitFollowers_SwiftUI
//
//  Created by Rian Harshaw on 5/13/22.
//

import SwiftUI

struct FollowerListView: View {
    @Binding var username: String
    @ObservedObject var viewModel = FollowerViewModel()
    
    var body: some View {
        NavigationView {
            ForEach(viewModel.followers) { follower in
                Text("\(follower.login)")
            }
        }
        .onAppear {
            getFollowers()
            }
    }
    
    func getFollowers() {
        viewModel.getFollower(username: username, page: 1) { result in
            switch result {
            case .success(let followers):
                print(followers)
            case .failure:
                print("DEBUG: Error loading data due to \(NetworkError.invalidData).")
            }
        }
    }
}

//struct FollowerListView_Previews: PreviewProvider {
//    static var previews: some View {
//        FollowerListView()
//    }
//}
