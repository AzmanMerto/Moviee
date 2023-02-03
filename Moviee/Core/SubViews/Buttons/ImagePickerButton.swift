//
//  ImagePickerButton.swift
//  Moviee
//
//  Created by NomoteteS on 28.01.2023.
//

import SwiftUI

struct ImagePickerButton: View {
    var image : String
    var text : String
    var action: () -> Void
    var body: some View {
                Button {
                action()
                } label: {
                    HStack(spacing: 20) {
                        Image(systemName: image)
                            .font(.system(size: UIScreen.main.bounds.height * 0.03))
                            .frame(width: UIScreen.main.bounds.width * 0.03)
                            .padding()
                        
                        Spacer()
                        
                        Text(text.locale())
                            .font(.system(size: UIScreen.main.bounds.height * 0.02,
                                          weight: .heavy,
                                          design: .default))
                            .frame(width: UIScreen.main.bounds.width * 0.5)
                        
                    }
                    .frame(width: UIScreen.main.bounds.width * 0.50)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color(ColorHelper.customRed.rawValue))
                }.buttonStyle(ImagePickerStyle())

            
        
    }
}

struct ImagePickerButton_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            ViewsBackground()
            ImagePickerButton(image: ImageHelper.Icons.gallery.rawValue, text: TextHelper.Button.addImageGallery.rawValue) {  }
        }
    }
}
