//
//  PostDetailView.swift
//  Reddit PS Battles
//
//  Created by Shane Richards on 3/23/20.
//  Copyright © 2020 DevCore Studios. All rights reserved.
//

import SwiftUI

struct PostDetailView: View {
    let post: Post
    
    var body: some View {
        VStack {
            Image(post.imageUrl)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(16)
                .padding()
            Text(post.title)
        }
        .navigationBarTitle(Text(post.title), displayMode: .inline)
    }
}

struct PostDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let post = Post(url: "", title: "Photoshop Battle: Runner", imageUrl: "running")
        return PostDetailView(post: post)
    }
}
