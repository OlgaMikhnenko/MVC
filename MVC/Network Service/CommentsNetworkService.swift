//
//  File.swift
//  MVC
//
//  Created by Helga on 08.02.2021.
//

import Foundation

class CommentNetworkSarvice {
    
    private init () {}
    
    static func getComments (completion : @escaping (GetCommentResponse) -> () ){
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts/1/comments") else {return}
        
        NetworkService.shared.getData(url: url) { (json) in
            do {
                let response = try GetCommentResponse(json: json)
                completion(response)
            } catch {
                print(error)
            }
        }
    }
}
