//
//  CommentsView.swift
//  DogGram
//
//  Created by Matteo on 28/01/2023.
//

import SwiftUI

struct CommentsView: View {
    @State var submissionText = ""
    @State var commentArray = [CommentModel]()
    
    var body: some View {
        VStack {
            ScrollView {
                LazyVStack {
                    ForEach(commentArray, id: \.self) {
                        MessageView(comment: $0)
                        
                    }
                }
            }
            
            HStack {
                Image("dog1")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40, alignment: .center)
                    .cornerRadius(20)
                
                TextField("Add a comment here...", text: $submissionText)
                
                Button(action: {},
                       label: {
                        Image(systemName: "paperplane.fill")
                            .font(.title2)
                            .accentColor(Color.CustomTheme.purpleColor)
                })
                
                
            }
            .padding(.all, 6)
        }
        .navigationBarTitle("Comments")
        .navigationBarTitleDisplayMode(.inline)
        .onAppear {
            getComments()
        }
    }
    
    func getComments() {
        print("getting comments from DB...")
        
        let comment1 = CommentModel( commentID: "", userID: "", username: "Matt Green", content: "Just a Comment", dateCreated: Date())
        let comment2 = CommentModel(commentID: "", userID: "", username: "Ben Hughes", content: "Another Comment", dateCreated: Date())
        let comment3 = CommentModel(commentID: "", userID: "", username: "John Barclay", content: "Ehi there!", dateCreated: Date())
        let comment4 = CommentModel(commentID: "", userID: "", username: "Susan Lloyds", content: "Hello lovely people!", dateCreated: Date())
        
        self.commentArray.append(comment1)
        self.commentArray.append(comment2)
        self.commentArray.append(comment3)
        self.commentArray.append(comment4)
    }
}

struct CommentsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            CommentsView()
        }
    }
}
