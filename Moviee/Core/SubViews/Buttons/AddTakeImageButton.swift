//
//  AddTakeImageButton.swift
//  Moviee
//
//  Created by NomoteteS on 29.01.2023.
//

import SwiftUI

struct AddTakeImageButton: View {

    @StateObject private var dataModels : ViewModelManager = .init(UIImage())

    
    
    var body: some View {

        Button {
            dataModels.imageSection.toggle()
        } label: {
            ZStack {
                
                let checkImage = dataModels.movieUIImage.toPngString()
                
                if checkImage != nil {
                    Image(uiImage: dataModels.movieUIImage)
                        .resizable()
                } else {
                    Image(ImageHelper.Views.noneSelectedImage.rawValue)
                        .resizable()
                }
               
               
                ZStack {
                    Color(ColorHelper.customDark.rawValue)
                        .opacity(0.5)
                    ZStack {
                        
                        Circle()
                            .stroke(Color(ColorHelper.customOrange.rawValue),
                                    lineWidth: 3)

                        Text(TextHelper.Button.addTakeImage.rawValue.locale())
                            .font(.title2).bold()
                            .foregroundColor(Color(ColorHelper.customOrange.rawValue))
                    }
                    .frame(width: UIScreen.main.bounds.width * 0.4)
                .multilineTextAlignment(.center)
                }
                .opacity(checkImage != nil ? 0 : 1)
            }
            .cornerRadius(10)
        }
        .buttonStyle(AddTakeImageStyle())
        .sheet(isPresented: $dataModels.imageSection) {
            withAnimation(.easeInOut) {
                ImageSectionButtons(image: $dataModels.movieUIImage)
                    .presentationDetents(.init(arrayLiteral: .height(UIScreen.main.bounds.height * 0.3)))
            }
        }

    }
}

struct AddTakeImageButton_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            ViewsBackground()
            AddTakeImageButton()
        }
    }
}
