//
//  RedditAPI.swift
//  Reddit PS Battles
//
//  Created by Shane Richards on 3/23/20.
//  Copyright © 2020 DevCore Studios. All rights reserved.
//

import Foundation


class RedditAPI {
    
    func getPosts() {
        guard let url = URL(string: "https://www.reddit.com/r/photoshopbattles.json") else { fatalError("URL is not correct!") }
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let data = data
            
            let posts = try! JSONDecoder().decode([Post].self, from: data!)
        }
        
        task.resume()
    }
}
