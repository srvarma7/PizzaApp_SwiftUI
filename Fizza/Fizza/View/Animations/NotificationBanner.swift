//
//  NotificationBanner.swift
//  Fizza
//
//  Created by Sai Raghu Varma Kallepalli on 7/9/20.
//

import SwiftUI

struct NotificationBanner: View {
    
    @Binding var showBanner: Bool
    
    var body: some View {
        
        Text("Success")
            .frame(width: UIScreen.main.bounds.width - 30, height: 70, alignment: .center)
            .background(Color.green)
            .foregroundColor(.white)
            .font(.title)
            .cornerRadius(16)
            .offset(y: showBanner ? 0 : -150)
            .animation(
                .interpolatingSpring(mass: 0.7,
                                     stiffness: 100,
                                     damping: 10,
                                     initialVelocity: 0))
        
    }
}

struct NotificationBanner_Previews: PreviewProvider {
    static var previews: some View {
        NotificationBanner(showBanner: .constant(false))
    }
}
