//
//  ImagePickerView.swift
//  Fizza
//
//  Created by Sai Raghu Varma Kallepalli on 5/9/20.
//

import SwiftUI

struct ImagePickerView: View {
    @State private var showImgPicker: Bool = false
    @State private var pickedImage: Image? = nil
    
    var body: some View {
        
        VStack {
            Text("Pick the image to provide rating")
                
            pickedImage?
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
                .clipped()
                .padding()
            
            Button("Open Gallery", action: {
                self.showImgPicker = true
            })
            .padding(8)
            .background(Color.green)
            .foregroundColor(.white)
            .cornerRadius(15)
            
        }
        .sheet(isPresented: $showImgPicker,
                onDismiss: {
                    self.showImgPicker = false
                },
                content: {
                    ImagePickerRepresentableView(showImagePicker: $showImgPicker, pickedImage: $pickedImage)
                })
    }
}

struct ImagePickerView_Previews: PreviewProvider {
    static var previews: some View {
        ImagePickerView()
    }
}
