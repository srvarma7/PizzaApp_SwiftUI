//
//  AllStaffView.swift
//  Fizza
//
//  Created by Sai Raghu Varma Kallepalli on 5/9/20.
//

import SwiftUI

struct AllStaffView: View {
    
    private var allStaff = Staff.getAllStaff()
    @State private var enteredSearchText: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                SearchBarViewRepresentable(searchText: $enteredSearchText)
                    .padding([.leading, .trailing], 15)
                List {
                    ForEach(self.allStaff
                                .filter {
                                    self.enteredSearchText.isEmpty ? true : $0.name.localizedCaseInsensitiveContains(self.enteredSearchText)
                                }
                            , id: \.name) { staff in
                        HStack {
                            Text(staff.name)
                            Spacer()
                            Text(staff.post.rawValue)
                                .foregroundColor(Color.gray)
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
