//
//  StaffModal.swift
//  Fizza
//
//  Created by Sai Raghu Varma Kallepalli on 5/9/20.
//

import Foundation

enum PostType: String {
    case area_head = "Area Head"
    case manager = "Manager"
    case shift_manager = "Shift Manager"
    case driver = "Delivery Driver"
    case maker = "Maker"
    case other = "Other"
}

struct Staff {
    let name: String
    let post: PostType
}

extension Staff {
    static func getAllStaff() -> [Staff] {
        
        return [
            
            Staff(name: "Digvijay", post: .area_head),
            Staff(name: "Sudeep", post: .manager),
            Staff(name: "Teja", post: .shift_manager),
            Staff(name: "Anuj", post: .driver),
            Staff(name: "Roushni", post: .maker),
            Staff(name: "Sam", post: .other)
        
        ]
        
    }
}
