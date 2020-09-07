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
                    .padding()
                
                NavigationLink("Multilevel list", destination: FizzaListView())
                    .padding()
                
                NavigationLink("UISearchBar", destination: AllStaffView())
                    .padding()
                    
                NavigationLink("User defaults", destination: ThemeView())
                    .padding()
                
                NavigationLink("Web image downloader", destination: WebImagesListView())
                    .padding()
                
                NavigationLink("Rating", destination: StartRatingListView())
                    .padding()
                
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
