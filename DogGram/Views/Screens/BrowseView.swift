//
//  BrowseView.swift
//  DogGram
//
//  Created by Matteo on 28/01/2023.
//

import SwiftUI

struct BrowseView: View {
    var posts = PostArrayObject()
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            CarouselView()
            ImageGridView(posts: posts)
        }
        .navigationBarTitle("BROWSE")
        .navigationBarTitleDisplayMode(.inline)
    }
    
}

struct BrowseView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            BrowseView(posts: PostArrayObject())
        }
        
    }
}
