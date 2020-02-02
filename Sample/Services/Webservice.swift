//
//  Webservice.swift
//  Sample
//
//  Created by jdj on 2020/01/31.
//  Copyright © 2020 jdj. All rights reserved.
//

import Foundation
import Alamofire

class Webservice {
    func getAllPosts2(completion: @escaping ([Post]) -> ()) {
        
        guard let url = URL(string:
        "https://jsonplaceholder.typicode.com/posts")
            else {
                fatalError("URL is not correct")
        }
        
        URLSession.shared.dataTask(with: url) { data, _, _ in
            
            let posts = try!
                JSONDecoder().decode([Post].self, from: data!)
            DispatchQueue.main.async {
                completion(posts)
            }
        }.resume()
    }
    
    func getAllPosts(completion: @escaping ([Post])->()){
        Alamofire.request("https://jsonplaceholder.typicode.com/posts").responseJSON {response in
            guard let data = response.data else {return}
            do{
                guard let posts = try? JSONDecoder().decode([Post].self, from: data) else {return}
                completion(posts)
            }
       }
    }
    
}
