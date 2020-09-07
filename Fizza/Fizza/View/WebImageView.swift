//
//  WebImageView.swift
//  Fizza
//
//  Created by Sai Raghu Varma Kallepalli on 7/9/20.
//

import SwiftUI
import Combine

struct WebImageView: View {
    
    var imageLink: String
    
    @ObservedObject var imageDownloader = ImageDownloader()
    
    init(link: String) {
        self.imageLink = link
        self.imageDownloader.getImage(link: imageLink)
    }
    
    var body: some View {
        
        if let data = imageDownloader.downloadedImageData {
            Image(uiImage: UIImage(data: data) ?? UIImage())
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding()
        } else {
            Text("!")
        }
    }
}

struct WebImageView_Previews: PreviewProvider {
    static var previews: some View {
        WebImageView(link: "https://00e9e64baccc9d83330556c28b160c7f3838b26ab3a492d4eb-apidata.googleusercontent.com/download/storage/v1/b/swift-images/o/SwiftUI%2Fdog.jpg?qk=AD5uMEtvikmi42_qGPKcfQPU28s39jCO_z55Ron6uYuziTBiGnqkOGe4qcJsgZ7xTNlSCtPhfnUciNr-8YwoYIY8B5WGEiqBwdMIrBE2O-uTjUm--HoVwh32bQzbY-RElv40XJJmL7Yo3H_TeJ7q8i8W_t0W1OONt_ArzWiy0mHpQRBOUSJ9dTTBBmwLgyll3V88-0DtlPi9Qst_5YBTxOdfSJ2HkLAePxGC2iejOi12MEF1jZ7NCG8iBJu0xs_Rdsir2PmUPCwhHoKi1Cn89rCEd2hwqQGWwnrvNFs2h0Z9f5UijSqXj8ccFBQmNl3beFclK1fvZZFVrSvqxnhcjvseHSYbJR1p73KC1Qh-VlfxFpJB75A7owRQwvALF9AVlqdgfUIjxnQI2CiMqRswJikc2c-XEyjWnJFD8Y8y6io2J_OUpgyLDxktg0z1sqEYRXzplOmmUZ1x-FhcIGKKykwx3PSfzEXYh2-yUAJ9W72kOxg_T1qW4OpqvLMYgGJ684RErkBJSLBonLxjxOjgEcBjBh5BzPVULDKWbt15Z6PIl0xoNw4pZ5jI4mqFqq89ctQFUF6u2JQhFTpnIZDajrFEGbuDhFZ2xH8CFLpn7B8WtXGADl1BelkdPOccykzb1GxJg2ppDaA4KTFcgtQgyUrQYlpStMgCX9we4g-6e_e-2Ssr7qUNn8zWBTDNbLkW5WpiUdkIjDoqBvc5HZX_p6gqGRjyNDvGCGKnBs5rJ-aJ28BsZSvXmSMaR8-gpnpdU4Mn4QgWiGcDdQ1biMOUQO7XfFYmNlk4st11iCaInVb_bUBAphsuu0Q&isca=1")
    }
}
