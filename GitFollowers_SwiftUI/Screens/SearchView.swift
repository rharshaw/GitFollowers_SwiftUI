//
//  SearchView.swift
//  GitFollowers_SwiftUI
//
//  Created by Rian Harshaw on 5/13/22.
//

import SwiftUI

struct SearchView: View {
    
    @State var username = ""
    
    var body: some View {
        NavigationView {
            VStack {
                Image("gh-logo")
                    .resizable()
                    .frame(width: 200, height: 200)
                
                Spacer()
                
                TextField("Enter Username", text: $username)
                    .padding(.horizontal, 40)
                    .font(.title2)
                    .textFieldStyle(.roundedBorder)
                
                Spacer()
                
                NavigationLink(destination: FollowerListView(username: $username)) {
                        Text("Search")
                }
                .greenButtonMod()
                
                Spacer()
            }
        }
        .navigationBarHidden(true)
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
