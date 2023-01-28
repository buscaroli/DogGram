//
//  PostArrayObject.swift
//  DogGram
//
//  Created by Matteo on 26/01/2023.
//

import Foundation

class PostArrayObject: ObservableObject {
    
    @Published var dataArray = [PostModel]()
    
    init() {
        print("Fetching data...")
        
        self.dataArray.append(PostModel(postID: "1234", userID: "AA42F2A", username: "Matt SMith", caption: "Great Post as usual!", dateCreated: Date.now, likeCount: 124, likedByUser: false))
        self.dataArray.append(PostModel(postID: "643", userID: "gsdg", username: "Yellow Sun", caption: "Lorem Ipsum something...", dateCreated: Date.now, likeCount: 124, likedByUser: false))
        self.dataArray.append(PostModel(postID: "f4w", userID: "fgdf45", username: "George G Glass", caption: "OOps, bad !", dateCreated: Date.now, likeCount: 124, likedByUser: false))
        self.dataArray.append(PostModel(postID: "243", userID: "sfsf", username: "Pink Pink", caption: "Yeah !", dateCreated: Date.now, likeCount: 124, likedByUser: false))
        self.dataArray.append(PostModel(postID: "3gght", userID: "snk52s", username: "Melody Evans", caption: "Not too shabby...", dateCreated: Date.now, likeCount: 124, likedByUser: false))
        self.dataArray.append(PostModel(postID: "3dgg", userID: "asky63d", username: "Stuart Little", caption: "Keep up the good work!", dateCreated: Date.now, likeCount: 124, likedByUser: false))
    }
    
    
}
