//
//  ImageView.swift
//  Fizza
//
//  Created by Sai Raghu Varma Kallepalli on 5/9/20.
//

import SwiftUI

struct ImageView: View {
    
    @Binding var showImgPicker: Bool
    @Binding var pickedImage: Image?
    
    var body: some View {
        ImagePickerRepresentableView(showImagePicker: $showImgPicker, pickedImage: $pickedImage)
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView(showImgPicker: .constant(true), pickedImage: .constant(Image("")))
    }
}
