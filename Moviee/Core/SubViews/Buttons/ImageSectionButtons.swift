//
//  ImageSectionButtons.swift
//  Moviee
//
//  Created by NomoteteS on 29.01.2023.
//

import SwiftUI

struct ImageSectionButtons: View {
    
    @StateObject var vmm : ViewModelManager = .init(UIImage())

    @Binding var image : UIImage
    
    var body: some View {
        ZStack {
            Color(ColorHelper.customDark.rawValue)
                .ignoresSafeArea()
            ZStack {
                
                /// background
                RoundedRectangle(cornerRadius: 40)
                    .stroke(Color(ColorHelper.customOrange.rawValue),lineWidth: 3)
                    .background {
                        Color(ColorHelper.customSoftDark.rawValue)
                            .cornerRadius(40)
                    }
                
                VStack(spacing: 30) {
                    
                    /// Take photo
                    ImagePickerButton(image: ImageHelper.Icons.camera.rawValue,
                                      text: TextHelper.Button.takePhoto.rawValue) {
                        vmm.takePhoto.toggle()
                    }
                    .sheet(isPresented: $vmm.takePhoto) {
                        ImagePickerManager(sourceType:.camera ,
                                           selectedImage: $image)
                        .fixedSize()
                    }
                    
                    /// Add from gallery
                    ImagePickerButton(image: ImageHelper.Icons.gallery.rawValue,
                                      text: TextHelper.Button.addImageGallery.rawValue) {
                        vmm.addImageGallery.toggle()
                        print("Item Selected from gallery \(image)")
                    }
                    .sheet(isPresented: $vmm.addImageGallery) {
                        ImagePickerManager(sourceType: .photoLibrary,
                                           selectedImage: $image )
                    }
                    
                    
                    
                }
            }
            .frame(width: UIScreen.main.bounds.width * 0.9 ,
                   height: UIScreen.main.bounds.height * 0.25)
        }
        
    }
}

struct ImageSectionRectengle_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            ViewsBackground()
            ImageSectionButtons(image: .constant(UIImage()))
        }
    }
}
