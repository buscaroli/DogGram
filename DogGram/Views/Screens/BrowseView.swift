//
//  BrowseView.swift
//  DogGram
//
//  Created by Matteo on 28/01/2023.
//

import SwiftUI

struct BrowseView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            CarouselView()
        }
        .navigationBarTitle("Browse")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct BrowseView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            BrowseView()
        }
        
    }
}
