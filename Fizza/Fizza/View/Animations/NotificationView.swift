//
//  NotificationView.swift
//  Fizza
//
//  Created by Sai Raghu Varma Kallepalli on 7/9/20.
//

import SwiftUI

struct NotificationView: View {
    
    @State var showBanner: Bool = false
    
    var body: some View {
        VStack {
            NotificationBanner(showBanner: $showBanner)
            Spacer()
            Button("Place order") {
                self.showBanner.toggle()
            }
            Spacer()
        }
    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView()
    }
}
