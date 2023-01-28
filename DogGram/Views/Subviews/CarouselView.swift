//
//  CarouselView.swift
//  DogGram
//
//  Created by Matteo on 28/01/2023.
//

import SwiftUI

struct CarouselView: View {
    @State var selection = 1
    @State var timerStarted = false
    
    var body: some View {
        TabView(selection: $selection) {
            ForEach(1...7, id: \.self) { count in
                Image("dog\(count)")
                    .resizable()
                    .scaledToFill()
                    .tag(count)
            }
        }
        .tabViewStyle(.page)
        .frame(height: 300)
        .onAppear {
            if !timerStarted {
                addTimer()
            }
        }
            
    }
    
    func addTimer() {
        timerStarted = true
        
        let timer = Timer.scheduledTimer(withTimeInterval: 5.0, repeats: true) { timer in
            if selection == 7 {
                selection = 1
            } else {
                selection += 1
            }
        }
        
        timer.fire()
    }
}

struct CarouselView_Previews: PreviewProvider {
    static var previews: some View {
        CarouselView()
            
    }
}
