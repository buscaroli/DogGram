//
//  ContentView.swift
//  DogGram
//
//  Created by Matteo on 17/01/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            NavigationView {
                FeedView(posts: PostArrayObject())
            }
            .tabItem {
                Image(systemName: "book.fill")
                Text("Feed")
            }
            
            BrowseView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Browse")
                }
            
            Text("Three")
                .tabItem {
                    Image(systemName: "square.and.arrow.up.fill")
                    Text("Upload")
                }
            
            Text("Four")
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
        }
        .accentColor(Color.CustomTheme.purpleColor)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
