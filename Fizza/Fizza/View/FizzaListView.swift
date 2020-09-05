//
//  FizzaListView.swift
//  Fizza
//
//  Created by Sai Raghu Varma Kallepalli on 5/9/20.
//

import SwiftUI

struct FizzaListView: View {
    
    private var fizzas = FizzaModal.getAll()
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(self.fizzas, id: \.title) { fizza in
                        Section(header:
                                    HStack {
                                        Text(fizza.title)
                                            .bold()
                                            .font(.headline)
                                        Spacer()
                                        Image(systemName: "star")
                                    }) { //item in
                                        ForEach(fizza.items, id: \.name) { item in
                                            HStack {
                                                Text(item.name)
                                                Spacer()
                                                Text(String(format: "%.2f", item.price))
                                                    .foregroundColor(Color.gray)
                                            }
                                            
                                        }
                            
                        }
                    }
                }.listStyle(GroupedListStyle())
            }
            .navigationTitle("Fizzas")
        }
    }
}

struct FizzaListView_Previews: PreviewProvider {
    static var previews: some View {
        FizzaListView()
    }
}
