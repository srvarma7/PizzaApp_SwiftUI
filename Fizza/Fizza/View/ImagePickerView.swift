//
//  ImagePickerView.swift
//  Fizza
//
//  Created by Sai Raghu Varma Kallepalli on 4/9/20.
//

import Foundation
import SwiftUI

class ImagePickerCoordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    
    @Binding var showImagePicker: Bool
    @Binding var pickedImage: Image?
    
    init(shown: Binding<Bool>, picked: Binding<Image?>) {
        _showImagePicker = shown
        _pickedImage = picked
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        let uiImage = info[UIImagePickerController.InfoKey.originalImage] as! UIImage
        pickedImage = Image(uiImage: uiImage)
        
        self.showImagePicker = false
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        self.showImagePicker = false
    }
    
    
    
}

struct ImagePickerView: UIViewControllerRepresentable {
    
    @Binding var showImagePicker: Bool
    @Binding var pickedImage: Image?
    
    func makeCoordinator() -> ImagePickerCoordinator {
        return ImagePickerCoordinator(shown: $showImagePicker, picked: $pickedImage)
    }
    
    func makeUIViewController(context: Context) -> some UIViewController {
        let picker = UIImagePickerController()
        picker.delegate = context.coordinator
        return picker
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        //
    }
}
