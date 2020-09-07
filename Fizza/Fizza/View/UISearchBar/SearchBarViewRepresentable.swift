//
//  SearchBarViewRepresentable.swift
//  Fizza
//
//  Created by Sai Raghu Varma Kallepalli on 5/9/20.
//

import Foundation
import SwiftUI

class SearchBarCoordinator: NSObject, UISearchBarDelegate {
    
    @Binding var enteredSearchText: String
    
    init(text: Binding<String>) {
        _enteredSearchText = text
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        enteredSearchText = searchText
    }
    
}

struct SearchBarViewRepresentable: UIViewRepresentable {
    
    @Binding var searchText: String
    
    func makeCoordinator() -> SearchBarCoordinator {
        return SearchBarCoordinator(text: $searchText)
    }
    
    func makeUIView(context: Context) -> UISearchBar {
        //
        let searchBar = UISearchBar()
        searchBar.delegate = context.coordinator
        searchBar.placeholder = "Type here to Search"
        //searchBar.barStyle = .default
        //searchBar.searchBarStyle = .prominent
        
        return searchBar
    }
    
    func updateUIView(_ uiView: UISearchBar, context: Context) {
        uiView.text = searchText
    }
    
    
}
