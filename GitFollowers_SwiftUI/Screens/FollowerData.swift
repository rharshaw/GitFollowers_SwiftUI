//
//  FollowerData.swift
//  GitFollowers_SwiftUI
//
//  Created by Rian Harshaw on 5/20/22.
//

import Foundation
import SwiftUI

struct FollowerData: View {
    let urlString: String
    let followerUsername: String
    
    @State var data: Data?
    
    var body: some View {
        VStack {
        if let data = data, let uiImage = UIImage(data: data) {
                Image(uiImage: uiImage)
                    .resizable()
                    .cornerRadius(10)
                    .frame(width: 70, height: 70)
                    
        } else {
            Image(systemName: "person")
                .resizable()
                .frame(width: 70, height: 70)
                .background(Color.gray)
                .onAppear {
                    fetchImage()
                }
        }
        Text(followerUsername)
            .bold()
            .minimumScaleFactor(0.2)
            .lineLimit(1)
        }
        .padding(10)
    }
    
    private func fetchImage() {
        guard let url = URL(string: urlString) else { return }
        
        let task = URLSession.shared.dataTask(with: url) { data, _, _ in
                self.data = data
        }
        task.resume()
    }
}
