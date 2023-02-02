//
//  AddTakeImageButton.swift
//  Moviee
//
//  Created by NomoteteS on 29.01.2023.
//

import SwiftUI

struct AddTakeImageButton: View {

    @StateObject private var dataModel : DataModels
    
    var body: some View {
        VStack {
            
        }
//        Button {
//
//        } label: {
//            ZStack {
//                if let userImage = dataModel.movieImage {
//                    Image(uiImage: userImage)
//                }else {
//                    let image = UIImage(named: "")
//                    let data = image!.pngData()
//                    Image(uiImage: UIImage(data: data!)!)
//                }
//
//
//                Color(ColorHelper.customDark.rawValue)
//                    .opacity(0.5)
//                ZStack {
//                    Circle()
//                        .stroke(Color(ColorHelper.customOrange.rawValue),
//                                lineWidth: 3)
//
//                    Text(TextHelper.Button.addTakeImage.rawValue.locale())
//                        .font(.title2).bold()
//                        .foregroundColor(Color(ColorHelper.customOrange.rawValue))
//                }
//                .frame(width: UIScreen.main.bounds.width * 0.4)
//                .multilineTextAlignment(.center)
//            }
//        }
//        .buttonStyle(AddTakeImageStyle())
//        .sheet(isPresented: $dataModel.imageSection) {
//            withAnimation(.easeInOut) {
//                ImageSectionButtons(image: $dataModel.movieImage)
//                    .presentationDetents(.init(arrayLiteral: .height(UIScreen.main.bounds.height * 0.3)))
//            }
//        }

    }
}

struct AddTakeImageButton_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            ViewsBackground()
//            AddTakeImageButton(dataModel: <#DataModels#>)
        }
    }
}
