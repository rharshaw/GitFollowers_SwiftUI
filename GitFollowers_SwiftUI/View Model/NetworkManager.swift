//
//  NetworkManager.swift
//  GitFollowers_SwiftUI
//
//  Created by Rian Harshaw on 5/13/22.
//

import Foundation


class NetworkManager: ObservableObject {
    
    static let shared = NetworkManager()
    
    let baseURL = "https://api.github.com/users/"
    var session = URLSession.shared
    
    func getFollower(username: String, page: Int, completed: @escaping (Result<[Follower], Error>) -> Void) {
        
        let endPoint = "\(username)/followers?per_page=100&page=\(page)"
        
        guard let url = URL(string: baseURL + endPoint) else { return }
        
        let task = URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data, error != nil else { return }
            
            let decoder = JSONDecoder()
            decoder.keyDecodingStrategy = .convertFromSnakeCase
            do {
                let followers = try decoder.decode([Follower].self, from: data)
                print("\(followers.count)")
                completed(.success(followers))
            } catch {
                completed(.failure(NetworkError.invalidData))
                print("DEBUG: Error! No data.")
            }
        }
        task.resume()
        
       
        
        
       
    }
    
}
