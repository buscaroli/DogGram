//
//  UploadView.swift
//  DogGram
//
//  Created by Matteo on 08/02/2023.
//

import SwiftUI

struct UploadView: View {
    
    var body: some View { 
        ZStack {
            VStack (spacing: 0){
                Button {
                    print("pressed")
                } label: {
                    Text("Take photo".uppercased())
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color.CustomTheme.yellowColor)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                .background(Color.CustomTheme.purpleColor)
                
                
                Button {
                    print("pressed")
                } label: {
                    Text("Import photo".uppercased())
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color.CustomTheme.purpleColor)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                .background(Color.CustomTheme.yellowColor)
                
            }
            
            
            
            Image("logo.transparent")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100, alignment: .center)
                .shadow(radius: 12)
        }
    }
}

struct UploadView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            UploadView()
        }
        
    }
}
