//
//  StartRatingListView.swift
//  Fizza
//
//  Created by Sai Raghu Varma Kallepalli on 7/9/20.
//

import SwiftUI

struct StartRatingListView: View {
    
    @State var rating: Int = 0
    
    var body: some View {
        VStack {
            HStack {
                ForEach(1...5, id:\.self) { index in
                    StarView(index: index, rating: $rating)
                }
            }
            Text("Provide rating")
                .font(.body)
                .padding()
        }
    }
}

struct StartRatingListView_Previews: PreviewProvider {
    static var previews: some View {
        StartRatingListView()
    }
}
