//
//  File.swift
//  MVC
//
//  Created by Helga on 08.02.2021.
//

import Foundation

class NetworkService {
    
    private init() {}
    
    static let shared = NetworkService()
    
    func getData(url: URL, completion: @escaping (Any) -> ()) {
        let session = URLSession.shared
        
        session.dataTask(with: url) { (data, response, error) in
            guard let data = data else { return }
            
            do {
                let json = try JSONSerialization.jsonObject(with: data, options: [])
                DispatchQueue.main.async (execute: {
                        completion (json)
                    })
            } catch {
                print(error)
            }
        }.resume()
    }
}

