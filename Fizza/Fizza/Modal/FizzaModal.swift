//
//  FizzaModal.swift
//  Fizza
//
//  Created by Sai Raghu Varma Kallepalli on 5/9/20.
//

import Foundation

struct FizzaModal {
    let title: String
    let items: [Item]
}

struct Item {
    let name: String
    let price: Double
}

extension FizzaModal {
    
    static func getAll() -> [FizzaModal] {
        
        return [
            FizzaModal(title: "Hot and Spicy",
                  items: [Item(name: "Pineapple", price: 2.0),
                          Item(name: "Chilli", price: 1.0),
                          Item(name: "Green Capsicum", price: 2.0),
                          Item(name: "Onion", price: 2.0)]),
            FizzaModal(title: "Chicken Supreme",
                  items: [Item(name: "Chicken", price: 3.0),
                          Item(name: "Mushroom", price: 2.0),
                          Item(name: "Pineapple", price: 2.0),
                          Item(name: "Chilli", price: 1.0),
                          Item(name: "Green Capsicum", price: 2.0),
                          Item(name: "Onion", price: 2.0)])
        ]
        
    }
    
}
