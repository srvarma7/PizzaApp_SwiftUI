//
//  AllStaffView.swift
//  Fizza
//
//  Created by Sai Raghu Varma Kallepalli on 5/9/20.
//

import SwiftUI

struct AllStaffView: View {
    
    private var allStaff = Staff.getAllStaff()
    
    var body: some View {
        NavigationView {
            VStack {
                
                List {
                    ForEach(self.allStaff, id: \.name) { staff in
                        HStack {
                            Text(staff.name)
                                .font(.title)
                            Spacer()
                            Text(staff.post.rawValue)
                                .font(.body)
                                .foregroundColor(.blue)
                                .opacity(0.9)
                        }
                    }
                    
                }
                
                .navigationTitle("Fizza Staff")
            }
        }
    }
}

struct AllStaffView_Previews: PreviewProvider {
    static var previews: some View {
        AllStaffView()
    }
}
