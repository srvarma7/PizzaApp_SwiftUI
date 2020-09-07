//
//  ImageDownloader.swift
//  Fizza
//
//  Created by Sai Raghu Varma Kallepalli on 6/9/20.
//

import Foundation
import SwiftUI
import Combine

class ImageDownloader: ObservableObject {
    
    @Published var downloadedImageData: Data?
    
    func getImage(link: String) {
        convertLinkToURL(link: link)
    }
    
    private func convertLinkToURL(link: String) {
        guard let urlLink = URL(string: link) else {
            print("Error while converting link to URL")
            return
        }
        downloadDatabyLink(urlLink: urlLink)
    }
    
    private func downloadDatabyLink(urlLink: URL) {
        URLSession.shared.dataTask(with: urlLink) { data, response, error in
            guard let data = data, error == nil else {
                print("Error while Downloading image data")
                return
            }
            DispatchQueue.main.async {
                self.downloadedImageData = data
                print(data)
            }
        }.resume()
    }
}
