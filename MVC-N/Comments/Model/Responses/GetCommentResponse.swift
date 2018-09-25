//
//  GetCommentResponse.swift
//  MVC-N
//
//  Created by Konstantin on 25/09/2018.
//  Copyright © 2018 Konstantin. All rights reserved.
//

import Foundation

struct GetCommentResponse {
    
    typealias JSON = [String: AnyObject]
    let comments: [Comment]
    
    init(json: Any) throws {
        guard let array = json as? [JSON] else { throw NetworkError.failInternetError }
        
        var comments = [Comment]()
        for dictionary in array {
            guard let comment = Comment(dict: dictionary) else { continue }
            comments.append(comment)
        }
        self.comments = comments
        
    }
}
