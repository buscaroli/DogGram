//
//  ImageGridView.swift
//  DogGram
//
//  Created by Matteo on 29/01/2023.
//

import SwiftUI

struct ImageGridView: View {
    @ObservedObject var posts: PostArrayObject
    
    var body: some View {
        LazyVGrid(
            columns: [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())],
            alignment: .center,
            spacing: nil,
            pinnedViews: []) {
                
                ForEach (posts.dataArray, id: \.self ) { post in
                    NavigationLink {
                        FeedView(posts: PostArrayObject(post: post), title: "Post")
                    } label: {
                        PostView(post: post, showHeadAndFooter: false)
                    }

                    
                }
            }
    }
}

struct ImageGridView_Previews: PreviewProvider {
    static var previews: some View {
        ImageGridView(posts: PostArrayObject())
    }
}
