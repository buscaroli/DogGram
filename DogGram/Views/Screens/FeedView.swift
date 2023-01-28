//
//  FeedView.swift
//  DogGram
//
//  Created by Matteo on 17/01/2023.
//

import SwiftUI

struct FeedView: View {
    
    @ObservedObject var posts: PostArrayObject
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false, content: {
            LazyVStack {
                ForEach(posts.dataArray , id: \.self) {
                    PostView(post: $0)
                }
            }
            
        })
        .navigationBarTitle("FEED VIEW")
        .navigationBarTitleDisplayMode(.inline)
        
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            FeedView(posts: PostArrayObject())
        }
        
    }
}
