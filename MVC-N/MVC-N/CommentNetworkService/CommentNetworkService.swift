//
//  CommentNetworkService.swift
//  MVC-N
//
//  Created by Дмитрий Никольский on 14.11.2022.
//

import Foundation

class CommentNetworkService {
    private init() {}
    
    static func getComments(complition: @escaping(GetCommentResponse) ->  Void) {
        guard let url = URL(string:  "https://jsonplaceholder.typicode.com/posts/1/comments") else {return}
        
        NetworkService.shared.getData(url: url) { (json) in
            do {
                let response = try GetCommentResponse(json: json)
                complition(response )
            } catch {
                print(error)
            }
        }
    }
}
