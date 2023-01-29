//
//  AddTakeImageStyle.swift
//  Moviee
//
//  Created by NomoteteS on 29.01.2023.
//

import SwiftUI

struct AddTakeImageStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        ZStack {
            configuration.label
                .background {
                        RoundedRectangle(cornerRadius: 10)
                        .stroke(Color(ColorHelper.customOrange.rawValue),lineWidth: 2)
                        .frame(width: UIScreen.main.bounds.width * 0.75,
                               height: UIScreen.main.bounds.height * 0.46)
                        .background {
                            Image(ImageHelper.Views.noneSelectedImage.rawValue)
                                .resizable()
                            Color(ColorHelper.customDark.rawValue)
                                .opacity(0.5)
                        }
            }
        }
        .frame(width: UIScreen.main.bounds.width * 0.75,
               height: UIScreen.main.bounds.height * 0.46)
    }
}

struct AddTakeImageStyle_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            ViewsBackground()
        Button {    }
        label: {  Text("")  }.buttonStyle(AddTakeImageStyle())

        }
    }
}
