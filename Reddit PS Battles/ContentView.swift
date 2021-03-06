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
                    NavigationLink(destination: PostDetailView(post: post)){
                        PostListItemView(post: post)
                    }
                }
            }.navigationBarTitle("Photoshop Battles!")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct PostListItemView: View {
    let post: Post
    
    var body: some View {
        HStack{
            Image(post.imageUrl)
                .resizable()
                .frame(width: 80, height: 80)
                .cornerRadius(16)
            Text(post.title)
        }
    }
}
