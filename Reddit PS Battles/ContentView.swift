//
//  ContentView.swift
//  Reddit PS Battles
//
//  Created by Shane Richards on 3/21/20.
//  Copyright © 2020 DevCore Studios. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var posts: [Post] = [
        Post(url: "", title: "PsBattle: the president of Slovakia and her buddie", imageUrl: "running"),
        Post(url: "", title: "PsBattle: gentleman gesturing to a store shelf", imageUrl: "running"),
        Post(url: "", title: "PsBattle: Extended Rabbit", imageUrl: "running"),
        Post(url: "", title: "PsBattle: This Polish couple out shopping", imageUrl: "running"),
        Post(url: "", title: "PsBattle: Cat sitting in a dumpling basket", imageUrl: "running"),
    ]
    
    var body: some View {
        NavigationView{
            List{
                ForEach(posts) { post in
                    HStack{
                        Image(post.imageUrl)
                            .resizable()
                            .frame(width: 80, height: 80)
                            .cornerRadius(16)
                        Text(post.title)
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
