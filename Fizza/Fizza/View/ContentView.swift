//
//  ContentView.swift
//  Fizza
//
//  Created by Sai Raghu Varma Kallepalli on 4/9/20.
//

import SwiftUI

struct ContentView: View {
    
    @State var viewOpened: Bool = false
    
    var body: some View {
        NavigationView {
            List {
                
                NavigationLink("UIImage Picker", destination: ImagePickerView())
                
                NavigationLink("Multilevel list", destination: FizzaListView())
                
                NavigationLink("UISearchBar", destination: AllStaffView())
                    
                NavigationLink("User defaults", destination: ThemeView())
                
                NavigationLink("Web image downloader", destination: WebImagesListView())
                
                NavigationLink("Rating", destination: StartRatingListView())
                
            }
            .navigationTitle("Home screen")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
