//
//  WebImagesListView.swift
//  Fizza
//
//  Created by Sai Raghu Varma Kallepalli on 7/9/20.
//

import SwiftUI

struct WebImagesListView: View {
    
    private var imagesList = [
        "https://storage.googleapis.com/swift-images/SwiftUI/building.jpg",
        "https://storage.googleapis.com/swift-images/SwiftUI/cat.jpg",
        "https://storage.googleapis.com/swift-images/SwiftUI/dog.jpg",
        "https://storage.googleapis.com/swift-images/SwiftUI/tree.jpg"
    ]
    
    var body: some View {
        NavigationView {
            ScrollView([.vertical]) {
                ForEach(self.imagesList, id: \.self) { image in
                    WebImageView(link: image)
                }
            }
            .navigationTitle("Downloaded Images")
        }
    }
}

struct WebImagesListView_Previews: PreviewProvider {
    static var previews: some View {
        WebImagesListView()
    }
}
