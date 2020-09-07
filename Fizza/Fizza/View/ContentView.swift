//
//  ContentView.swift
//  Fizza
//
//  Created by Sai Raghu Varma Kallepalli on 4/9/20.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        VStack {
            WebImageView(link: "https://storage.googleapis.com/swift-images/SwiftUI/building.jpg")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
