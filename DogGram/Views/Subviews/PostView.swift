//
//  PostView.swift
//  DogGram
//
//  Created by Matteo on 17/01/2023.
//

import SwiftUI

struct PostView: View {
    
    @State var post: PostModel
    
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            
            // MARK: HEADER
            HStack {
                Image("dog1")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 30, height: 30, alignment: .center)
                    .cornerRadius(15)
                
                Text(post.username)
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(.primary)
                
                Spacer()
                
                Image(systemName: "ellipsis")
                    .font(.headline)
            }
            .padding(.all, 6)
            
            // MARK: IMAGE
            Image("dog1")
                .resizable()
                .scaledToFit()
            
            // MARK: FOOTER
            HStack(alignment: .center, spacing: 20) {
                Image(systemName: "heart")
                
                // MARK: COMMENT ICON
                NavigationLink(destination: CommentsView()) {
                    Image(systemName: "bubble.middle.bottom")
                        .foregroundColor(.primary)
                }
                
                
                Image(systemName: "paperplane")
                
                Spacer()
            }
            .padding(.all, 6)
            .font(.title3)
            
            if let caption = post.caption {
                HStack {
                    Text(caption)
                    
                    Spacer(minLength: 0)
                }
                .padding(.all, 6)
            }
            
        }
    }
}

struct PostView_Previews: PreviewProvider {
    
    static var post = PostModel(postID: "1AB34FF", userID: "03AAF", username: "Matt Smith", caption: "Great post about dogs!", dateCreated: Date.now, likeCount: 123, likedByUser: false)
    
    static var previews: some View {
        PostView(post: post)
            .previewLayout(.sizeThatFits)
    }
}
