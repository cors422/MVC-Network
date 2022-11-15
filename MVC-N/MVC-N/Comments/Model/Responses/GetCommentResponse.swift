//
//  GetCommentResponse.swift
//  MVC-N
//
//  Created by Дмитрий Никольский on 14.11.2022.
//

import Foundation

struct GetCommentResponse {
    let comments: [Comment]
    init(json: Any) throws { 
        guard let array = json as? [[String:AnyObject]] else { throw NetworkError.failInternetConnection}
        
        var comments = [Comment]()
        for dictionary in array {
            guard let comment = Comment(dict: dictionary) else { continue }
            comments.append(comment)
        }
        self.comments = comments
    }
}
