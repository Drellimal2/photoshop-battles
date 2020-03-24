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
    
    @State
    var submissions: [Post] = [
        Post(url: "", title: "PsBattle: the president of Slovakia and her buddie", imageUrl: "running"),
        Post(url: "", title: "PsBattle: gentleman gesturing to a store shelf", imageUrl: "running"),
        Post(url: "", title: "PsBattle: Extended Rabbit", imageUrl: "running"),
        Post(url: "", title: "PsBattle: This Polish couple out shopping", imageUrl: "running"),
        Post(url: "", title: "PsBattle: Cat sitting in a dumpling basket", imageUrl: "running"),
    ]
    
    var body: some View {
        VStack {
            Image(post.imageUrl)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(16)
                .padding()
            Text(post.title)
            
            List{
                ForEach(submissions) { submission in
                    NavigationLink(destination: ImagePreviewerView(imageUrl: submission.imageUrl)) {
                        HStack{
                            Image(submission.imageUrl)
                                .resizable()
                                .frame(width: 80, height: 80)
                                .cornerRadius(16)
                            Text(submission.title)
                        }
                    }
                }
            }.navigationBarTitle("Photoshop Battles!")
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
