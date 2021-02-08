//
//  File.swift
//  MVC
//
//  Created by Helga on 08.02.2021.
//

import Foundation

struct GetCommentResponse{
    typealias JSON = [String : AnyObject]
    let comments : [Comment]
    
    init (json : Any) throws {
        guard let array = json as? [JSON] else { throw NetworkError.FailInternetError}
        
        var comments = [Comment]()
        for dictionary in array {
            guard let comment = Comment(dict : dictionary) else {
                continue
            }
            comments.append(comment)
        }
        self.comments = comments
    }
}
