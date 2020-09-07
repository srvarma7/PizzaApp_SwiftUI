//
//  StarView.swift
//  Fizza
//
//  Created by Sai Raghu Varma Kallepalli on 7/9/20.
//

import SwiftUI

struct StarView: View {
    
    var index: Int
    @Binding var rating: Int
    
    var unFilledStart = "star"
    var fillerStart = "star.fill"
    
    var body: some View {
        
        Image(systemName: index > rating ? unFilledStart : fillerStart)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 50, height: 50)
            .foregroundColor(.orange)
            .onTapGesture(count: 1, perform: {
                withAnimation(.easeInOut(duration: 3), {
                    self.rating = index
                })
                
            })
        
    }
}

struct StarView_Previews: PreviewProvider {
    static var previews: some View {
        StarView(index: (2), rating: .constant(2))
    }
}
